module uim.entities.attributeclasses.percentage;

@safe:
import uim.entities;

class DOOPAttributePercentage : DDoubleAttributeClass {
  mixin(AttributeClassThis!("OOPAttributePercentage"));
}
mixin(AttributeClassCalls!("OOPAttributePercentage"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}