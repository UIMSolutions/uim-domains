module uim.domains.attributes.strings.city;

@safe:
import uim.domains;

// means.location.city
class DCityAttribute : DStringAttribute {
  mixin(AttributeThis!("CityAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("city")
      .registerPath("city");
  }
}
mixin(AttributeCalls!("CityAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}