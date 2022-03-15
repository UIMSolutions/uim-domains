module uim.entities.attributeclasses.chars.strings.list;

@safe:
import uim.entities;

// A CSV contained within one string value
// means.content.text.CSV
class DOOPListAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPListAttributeClass"));
}
mixin(AttributeClassCalls!("OOPListAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}