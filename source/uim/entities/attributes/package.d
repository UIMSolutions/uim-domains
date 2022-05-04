module uim.entities.attributes;

@safe:
import uim.entities;

public import uim.entities.attributes.attribute;

public import uim.entities.attributes.lookups;
public import uim.entities.attributes.codes;

public import uim.entities.attributes.arrays;
public import uim.entities.attributes.booleans;
public import uim.entities.attributes.bytes;
public import uim.entities.attributes.chars;
public import uim.entities.attributes.dates;
public import uim.entities.attributes.datetimes;
public import uim.entities.attributes.decimals;
public import uim.entities.attributes.doubles;
public import uim.entities.attributes.entities;
public import uim.entities.attributes.integers;
public import uim.entities.attributes.ulongs;
public import uim.entities.attributes.uuids;

template AttributeThis(string name) {
  const char[] AttributeThis = `
  this() { super(); this.name("`~name~`");  }
  this(Json newData) { this().fromJson(newData); }
  this(UUID myId) { this().id(myId); }
  this(string myName) { this().name(myName); }
  this(UUID myId, string myName) { this(myId).name(myName); }  
  `;
}

template AttributeCalls(string name) {
  const char[] AttributeCalls = `
auto `~name~`() { return new D`~name~`();  }
auto `~name~`(Json newData) { return new D`~name~`(newData); }
auto `~name~`(UUID myId) { return new D`~name~`(myId); }
auto `~name~`(string myName) { return new D`~name~`(myName); }
auto `~name~`(UUID myId, string myName) { return new D`~name~`(myId, myName); }  
`;
}

void testAttribute(DAttribute attribute) {
  assert(attribute);
}

static this() {
  AttributeRegistry
    // Booleans
    .register(BooleanAttribute)
    // Bytes
    .register(BinaryAttribute)
    .register(ByteAttribute)
    // Chars
    .register(CharAttribute)
    // Chars -> Strings
    .register(AddressLineAttribute)
    .register(AttributeNameAttribute)
    .register(CityAttribute)
    .register(ColorNameAttribute)
    .register(CompanyNameAttribute)
    .register(CountryAttribute)
    .register(CountyAttribute)
    .register(LanguageTagAttribute)
    .register(LastNameAttribute)
    .register(LinkAttribute)
    .register(ListAttribute)
    .register(StringAttribute)
    .register(UrlAttribute)
    // Dates
    .register(DateAttribute)
    // DateTimes
    .register(BirthDateAttribute)
    .register(DatetimeAttribute)
    .register(TimeAttribute);
    // Decimals
}

version(test_uim_entities) {
  unittest {
    writeln(AttributeRegistry["boolean"].name);
    writeln(AttributeRegistry["byte"].name);
    writeln(AttributeRegistry["binary"].name);

    writeln(AttributeRegistry.paths);
  }
}
