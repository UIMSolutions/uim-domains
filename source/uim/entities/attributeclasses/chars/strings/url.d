module uim.entities.attributeclasses.chars.strings.url;

@safe:
import uim.entities;

class DOOPUrlAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPUrlAttributeClass"));
}
mixin(AttributeClassCalls!("OOPUrlAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}