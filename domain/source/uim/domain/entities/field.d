struct FieldMeta
{
    string name;
    string typeName;
    bool isKey, mandatory, readOnly;
    size_t length;
    string label;
    string assocTarget;
}

FieldMeta[] fieldsOf(E)()
{
    FieldMeta[] result;
    static foreach (i, name; FieldNameTuple!E)
    {{
        alias member = __traits(getMember, E, name);
        alias T = typeof(member);
        FieldMeta m;
        m.name      = name;
        m.typeName  = T.stringof;
        m.isKey     = hasUDA!(member, Key);
        m.mandatory = hasUDA!(member, Mandatory);
        m.readOnly  = hasUDA!(member, ReadOnly);

        static if (hasUDA!(member, Length))
            m.length = getUDAs!(member, Length)[0].value;
        static if (hasUDA!(member, Label))
            m.label = getUDAs!(member, Label)[0].text;
        static if (hasUDA!(member, Association))
            m.assocTarget = getUDAs!(member, Association)[0].target;

        result ~= m;
    }}
    return result;
}