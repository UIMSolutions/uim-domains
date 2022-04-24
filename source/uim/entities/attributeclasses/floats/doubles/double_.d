module uim.entities.attributeclasses.doubles.double_;

@safe:
import uim.entities;

class DOOPDoubleAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPDoubleAttributeClass"));
}
mixin(AttributeClassCalls!("OOPDoubleAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}