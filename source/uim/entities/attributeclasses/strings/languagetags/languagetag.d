module uim.entities.attributeclasses.strings.languagetags.languagetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DLanguageTagAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("LanguageTagAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("languagetag")
      .registerPath("languagetag");
  }
}
mixin(AttributeClassCalls!("LanguageTagAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}