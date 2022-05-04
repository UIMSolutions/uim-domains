module uim.entities.attributes.integers.number;

@safe:
import uim.entities;

class DNumberAttribute : DIntegerAttribute {
  mixin(AttributeThis!("NumberAttribute"));
}
mixin(AttributeCalls!("NumberAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DNumberAttribute);
    testAttribute(NumberAttribute);
  }
}