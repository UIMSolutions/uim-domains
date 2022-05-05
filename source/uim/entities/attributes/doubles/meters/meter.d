module uim.entities.attributes.doubles.meters.meter;

/* 
Unit of measure for length in meters

is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.length
means.measurement.units.si.meter
has.measurement.fundamentalComponent.meter */

@safe:
import uim.entities;

class DMeterAttribute : DDoubleAttribute {
  mixin(AttributeThis!("MeterAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("meter")
      .registerPath("meter");
  }
}
mixin(AttributeCalls!("MeterAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}