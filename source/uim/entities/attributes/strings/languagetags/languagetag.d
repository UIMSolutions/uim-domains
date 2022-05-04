module uim.entities.attributes.strings.languagetags.languagetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DLanguageTagAttribute : DStringAttribute {
  mixin(AttributeThis!("LanguageTagAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("languageTag")
      .registerPath("languagetag");
  }
}
mixin(AttributeCalls!("LanguageTagAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}