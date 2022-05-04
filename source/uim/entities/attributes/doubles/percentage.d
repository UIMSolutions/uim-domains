module uim.entities.attributes.percentage;

@safe:
import uim.entities;

class DPercentageAttribute : DDoubleAttribute {
  mixin(AttributeThis!("PercentageAttribute"));
}
mixin(AttributeCalls!("PercentageAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}