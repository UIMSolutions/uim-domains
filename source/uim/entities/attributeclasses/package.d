module uim.entities.attributeclasses;

@safe:
import uim.entities;

public import uim.entities.attributeclasses.attributeclass;

public import uim.entities.attributeclasses.arrays;
public import uim.entities.attributeclasses.bools;
public import uim.entities.attributeclasses.bytes;
public import uim.entities.attributeclasses.chars;
public import uim.entities.attributeclasses.dates;
public import uim.entities.attributeclasses.datetimes;
public import uim.entities.attributeclasses.decimals;
public import uim.entities.attributeclasses.doubles;
public import uim.entities.attributeclasses.entities;
public import uim.entities.attributeclasses.floats;
public import uim.entities.attributeclasses.integers;
public import uim.entities.attributeclasses.ulongs;
public import uim.entities.attributeclasses.uuids;

template AttributeClassThis(string name) {
  const char[] AttributeClassThis = `
  this() { super(); this.name("`~name~`");  }
  this(Json newData) { this().fromJson(newData); }
  this(UUID myId) { this().id(myId); }
  this(string myName) { this().name(myName); }
  this(UUID myId, string myName) { this(myId).name(myName); }  
  `;
}

template AttributeClassCalls(string name) {
  const char[] AttributeClassCalls = `
auto `~name~`() { return new D`~name~`();  }
auto `~name~`(Json newData) { return new D`~name~`(newData); }
auto `~name~`(UUID myId) { return new D`~name~`(myId); }
auto `~name~`(string myName) { return new D`~name~`(myName); }
auto `~name~`(UUID myId, string myName) { return new D`~name~`(myId, myName); }  
`;
}

void testAttributeClass(DAttributeClass attributeClass) {
  assert(attributeClass);
}