module uim.entities.attributeclasses.chars.strings.languagetags.languagetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DOOPLanguageTagAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPLanguageTagAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("languagetag")
      .registerPath("languagetag");
  }
}
mixin(AttributeClassCalls!("OOPLanguageTagAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}