module uim.entities.attributeclasses.integers.number;

@safe:
import uim.entities;

class DOOPNumberAttributeClass : DOOPIntegerAttributeClass {
  mixin(AttributeClassThis!("OOPNumberAttributeClass"));
}
mixin(AttributeClassCalls!("OOPNumberAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPNumberAttributeClass);
    testAttributeClass(OOPNumberAttributeClass);
  }
}