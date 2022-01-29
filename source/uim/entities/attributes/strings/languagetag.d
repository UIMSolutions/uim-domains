module uim.entities.attributes.strings.languagetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DOOPLanguageTagAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPLanguageTagAttribute", "languagetag"));
}
mixin(OOPAttributeCalls!("OOPLanguageTagAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}