module uim.entities.attributeclasses.doubles.latitude;

@safe:
import uim.entities;

// means.location.latitude
class DLatitudeAttributeClass : DDoubleAttributeClass {
  mixin(AttributeClassThis!("LatitudeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("latitude")
      .registerPath("latitude");
  }
}
mixin(AttributeClassCalls!("LatitudeAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
