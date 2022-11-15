module uim.domains.attributes.doubles.meters.milli;

@safe:
import uim.domains;

/* Unit of measure for length in 10E-3 meters

Inheritance
any <- float <- double <- meter <- millimeter
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.length
means.measurement.units.si.meter
has.measurement.fundamentalComponent.meter
means.measurement.prefix.milli */

@safe:
import uim.domains;

class DMillimeterAttribute : DMeterAttribute {
  mixin(AttributeThis!("MillimeterAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("millimeter")
      .registerPath("millimeter");
  }
}
mixin(AttributeCalls!("MillimeterAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}