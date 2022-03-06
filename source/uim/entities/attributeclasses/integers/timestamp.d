module uim.entities.attributeclasses.integers.timestamp;

@safe:
import uim.entities;

class DOOPTimestampAttributeClass : DOOPLongAttributeClass {
  mixin(AttributeClassThis!("OOPTimestampAttributeClass"));
}
mixin(AttributeClassCalls!("OOPTimestampAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPTimestampAttributeClass);
    testAttributeClass(OOPTimestampAttributeClass);
  }
}