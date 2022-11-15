module uim.domains.attributes.doubles.latitude;

@safe:
import uim.domains;

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
