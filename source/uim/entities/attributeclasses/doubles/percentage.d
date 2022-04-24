module uim.entities.attributeclasses.percentage;

@safe:
import uim.entities;

class DOOPAttributePercentage : DOOPDoubleAttributeClass {
  mixin(AttributeClassThis!("OOPAttributePercentage"));
}
mixin(AttributeClassCalls!("OOPAttributePercentage"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}