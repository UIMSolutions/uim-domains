module uim.domains.attributes.doubles.meters.centi;

// Unit of measure for length in 10E-2 meters
/* any <- float <- double <- meter <- centimeter
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.length
means.measurement.units.si.meter
has.measurement.fundamentalComponent.meter
means.measurement.prefix.centi */

@safe:
import uim.domains;

class DCentimeterAttribute : DMeterAttribute {
  mixin(AttributeThis!("CentimeterAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("centimeter")
      .registerPath("centimeter");
  }
}
mixin(AttributeCalls!("CentimeterAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}