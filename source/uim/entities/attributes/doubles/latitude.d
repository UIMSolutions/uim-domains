module uim.entities.attributes.doubles.latitude;

@safe:
import uim.entities;

// means.location.latitude
class DLatitudeAttribute : DDoubleAttribute {
  mixin(AttributeThis!("LatitudeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("latitude")
      .registerPath("latitude");
  }
}
mixin(AttributeCalls!("LatitudeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
