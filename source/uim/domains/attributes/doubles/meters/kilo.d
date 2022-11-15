module uim.domains.attributes.doubles.meters.kilo;

/* Unit of measure for length in 10E3 meters

is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.length
means.measurement.units.si.meter
has.measurement.fundamentalComponent.meter
means.measurement.prefix.kilo */

@safe:
import uim.domains;

class DKilometerAttribute : DMeterAttribute {
  mixin(AttributeThis!("KilometerAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("kilometer")
      .registerPath("kilometer");
  }
}
mixin(AttributeCalls!("KilometerAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}