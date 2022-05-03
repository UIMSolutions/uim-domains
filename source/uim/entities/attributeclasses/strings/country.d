module uim.entities.attributeclasses.strings.country;

@safe:
import uim.entities;

// means.location.country
class DCountryAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("CountryAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("country")
      .registerPath("country");
  }
}
mixin(AttributeClassCalls!("CountryAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}