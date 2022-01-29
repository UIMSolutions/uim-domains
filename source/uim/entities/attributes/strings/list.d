module uim.entities.attributes.strings.list;

@safe:
import uim.entities;

// A CSV contained within one string value
// means.content.text.CSV
class DOOPListAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPListAttribute", "list"));
}
mixin(OOPAttributeCalls!("OOPListAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}