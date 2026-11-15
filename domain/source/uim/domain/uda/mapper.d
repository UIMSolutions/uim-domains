module uim.domain.uda.mapper;

import uim.domain.uda.general;
import std.traits;
import std.range;

/// Maps a field to a target field name in the domain model.
struct MapTo {
    string targetFieldName;
}

string generateMapperCode(Source, Target)() {
    string code = "";

    static foreach (sourceField; FieldNameTuple!Source) {
        {
            alias memberSymbol = __traits(getMember, Source, sourceField);

            static if (__traits(hasMember, Target, sourceField)) {
                // Wir bauen den Ausdruck schrittweise zur Kompilierzeit zusammen
                string expr = "source." ~ sourceField;

                // 1. Prüfen, ob ein @DefaultVal Attribut vorhanden ist
                static if (hasUDA!(memberSymbol, DefaultVal)) {
                    enum defVal = getUDAs!(memberSymbol, DefaultVal)[0].value;
                    // Wenn der String leer ist, nimm den Default-Wert, sonst das Original
                    expr = "(" ~ expr ~ ".empty ? \"" ~ defVal ~ "\" : " ~ expr ~ ")";
                }

                // 2. Prüfen, ob ein @ConvertWith Attribut vorhanden ist
                static if (hasUDA!(memberSymbol, ConvertWith)) {
                    expr = "getUDAs!(Source." ~ sourceField ~ ", ConvertWith)[0].convert(" ~ expr ~ ")";
                }

                // Zuweisung generieren
                code ~= "target." ~ sourceField ~ " = " ~ expr ~ ";\n";
            }
        }
    }

    return code;
}

void mapStruct(Source, Target)(ref const Source source, ref Target target) @safe {
    mixin(generateMapperCode!(Source, Target)());
}

/// 
unittest {
    import std.stdio;

    struct BusinessPartnerDTO {
        // If partnerName is empty, @DefaultVal ("Unbekannt") applies first, then it is processed by @ConvertWith (sanitizeAndTrim).
        // Then the result is processed by @ConvertWith (sanitizeAndTrim).
        @DefaultVal("Unbekannt") @ConvertWith!sanitizeAndTrim 
        string partnerName;
    }

    struct DomainBusinessPartner {
        string partnerName;
    }

    // Test case A: Field is empty -> Default value applies
    BusinessPartnerDTO dtoEmpty;
    dtoEmpty.partnerName = null; // Nur Leerzeichen / leer

    DomainBusinessPartner entity1;
    mapStruct(dtoEmpty, entity1);
    writeln("Result A (with Default): '", entity1.partnerName, "'");

    // Test case B: Field is filled -> Will be trimmed normally
    BusinessPartnerDTO dtoFilled;
    dtoFilled.partnerName = "  Global Logistics GmbH   ";

    DomainBusinessPartner entity2;
    mapStruct(dtoFilled, entity2);
    writeln("Result B (trimmed):    '", entity2.partnerName, "'");

    // Test case C: Field contains a normal value -> Will be used as is after trimming
    BusinessPartnerDTO dtoWhitespace;
    dtoWhitespace.partnerName = "aName";

    DomainBusinessPartner entity3;
    mapStruct(dtoWhitespace, entity3);
    writeln("Result C (with Value): '", entity3.partnerName, "'");
}
