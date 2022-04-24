module uim.entities.attributeclasses.strings.city;

@safe:
import uim.entities;

// means.location.city
class DOOPCityAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPCityAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("city")
      .registerPath("city");
  }
}
mixin(AttributeClassCalls!("OOPCityAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}