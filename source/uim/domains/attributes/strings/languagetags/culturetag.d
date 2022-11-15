module uim.domains.attributes.strings.languagetags.culturetag;

@safe:
import uim.domains;

class DCultureTagAttribute : DStringAttribute {
  mixin(AttributeThis!("CultureTagAttribute"));

  override void initialize() {
    super.initialize;

    /* means.reference.language.tag
    means.reference.culture.tag */
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