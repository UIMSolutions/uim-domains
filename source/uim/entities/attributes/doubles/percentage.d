module uim.entities.attributes.percentage;

@safe:
import uim.entities;

class DOOPAttributePercentage : DOOPDoubleAttribute {
  mixin(OOPAttributeThis!("OOPAttributePercentage"));
}
mixin(OOPAttributeCalls!("OOPAttributePercentage"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}