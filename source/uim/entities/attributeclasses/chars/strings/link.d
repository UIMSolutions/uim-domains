module uim.entities.attributeclasses.chars.strings.link;

@safe:
import uim.entities;

class DOOPLinkAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPLinkAttributeClass"));
}
mixin(AttributeClassCalls!("OOPLinkAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}