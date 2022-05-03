module uim.entities.attributeclasses.percentage;

@safe:
import uim.entities;

class DPercentageAttributeClass : DDoubleAttributeClass {
  mixin(AttributeClassThis!("PercentageAttributeClass"));
}
mixin(AttributeClassCalls!("PercentageAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}