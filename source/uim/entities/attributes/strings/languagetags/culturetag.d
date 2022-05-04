module uim.entities.attributes.strings.languagetags.culturetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DCultureTagAttribute : DStringAttribute {
  mixin(AttributeThis!("CultureTagAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("languageTag")
      .registerPath("languagetag");
  }
}
mixin(AttributeCalls!("CultureTagAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}