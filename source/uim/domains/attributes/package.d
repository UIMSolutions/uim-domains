module uim.domains.attributes;

@safe:
import uim.domains;

public import uim.domains.attributes.attribute;

public import uim.domains.attributes.lookups;
public import uim.domains.attributes.codes;

public import uim.domains.attributes.arrays;
public import uim.domains.attributes.booleans;
public import uim.domains.attributes.bytes;
public import uim.domains.attributes.chars;
public import uim.domains.attributes.dates;
public import uim.domains.attributes.datetimes;
public import uim.domains.attributes.decimals;
public import uim.domains.attributes.doubles;
public import uim.domains.attributes.elements;
public import uim.domains.attributes.entities;
public import uim.domains.attributes.integers;
public import uim.domains.attributes.ulongs;
public import uim.domains.attributes.uuids;

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

version(test_uim_domains) {
  unittest {
    writeln(AttributeRegistry["boolean"].name);
    writeln(AttributeRegistry["byte"].name);
    writeln(AttributeRegistry["binary"].name);

    writeln(AttributeRegistry.paths);
  }
}
