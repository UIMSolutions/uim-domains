module uim.entities.attributeclasses.integers.long_;

@safe:
import uim.entities;

class DOOPLongAttributeClass : DOOPAttributeClass {
  mixin(AttributeClassThis!("OOPLongAttributeClass"));
}
mixin(AttributeClassCalls!("OOPLongAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPLongAttributeClass);
    testAttributeClass(OOPLongAttributeClass);
  }
}