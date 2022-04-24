module uim.entities.attributeclasses.strings.gender;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.demographic.gender */
class DGenderAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("GenderAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("gender")
      .registerPath("gender");
  }
}
mixin(AttributeClassCalls!("GenderAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}