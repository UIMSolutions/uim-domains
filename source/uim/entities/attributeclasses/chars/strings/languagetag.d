module uim.entities.attributeclasses.chars.strings.languagetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DOOPLanguageTagAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPLanguageTagAttributeClass"));
}
mixin(AttributeClassCalls!("OOPLanguageTagAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}