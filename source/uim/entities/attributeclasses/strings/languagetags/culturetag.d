module uim.entities.attributeclasses.strings.languagetags.culturetag;

@safe:
import uim.entities;

// means.reference.language.tag
class DCultureTagAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("CultureTagAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("languagetag")
      .registerPath("languagetag");
  }
}
mixin(AttributeClassCalls!("CultureTagAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}