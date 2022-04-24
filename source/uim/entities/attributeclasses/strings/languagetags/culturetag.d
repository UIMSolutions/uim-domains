module uim.entities.attributeclasses.chars.strings.languagetags.culturetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DCultureTagAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("CultureTagAttributeClass"));

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