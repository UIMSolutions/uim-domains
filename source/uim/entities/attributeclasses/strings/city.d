module uim.entities.attributeclasses.strings.city;

@safe:
import uim.entities;

// means.location.city
class DCityAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("CityAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("city")
      .registerPath("city");
  }
}
mixin(AttributeClassCalls!("CityAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}