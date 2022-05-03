module uim.entities.attributeclasses.integers.number;

@safe:
import uim.entities;

class DNumberAttributeClass : DIntegerAttributeClass {
  mixin(AttributeClassThis!("NumberAttributeClass"));
}
mixin(AttributeClassCalls!("NumberAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DNumberAttributeClass);
    testAttributeClass(NumberAttributeClass);
  }
}