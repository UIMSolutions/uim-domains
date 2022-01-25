module uim.entities.attributes;

@safe:
import uim.entities;

// Main
public import uim.entities.attributes.attribute;

// Packages
public import uim.entities.attributes.arrays;
public import uim.entities.attributes.bools;
public import uim.entities.attributes.dates;
public import uim.entities.attributes.datetimes;
public import uim.entities.attributes.doubles;
public import uim.entities.attributes.entities;
public import uim.entities.attributes.integers;
public import uim.entities.attributes.strings;
public import uim.entities.attributes.uuids;

// Modules
public import uim.entities.attributes.bools.boolean;
public import uim.entities.attributes.lookup;
public import uim.entities.attributes.array_;
public import uim.entities.attributes.object_;
public import uim.entities.attributes.stringarray;
public import uim.entities.attributes.tags;

unittest {
  version(test_uim_entities) {
    debug writeln(uimRegistryAttributes.paths);
  }
}

template OOPAttributeThis(string className) {
  const char[] OOPAttributeThis = `
this() { super(); this.name = "`~className~`"; }
this(DOOPAttributeClass myAttributeClass) { this().attributeClass(myAttributeClass); }`;
}

template OOPAttributeCalls(string className) {
  const char[] OOPAttributeCalls = `
auto `~className~`() { return new D`~className~`(); }
auto `~className~`(DOOPAttributeClass myAttributeClass) { return new D`~className~`(myAttributeClass); }`;
}
