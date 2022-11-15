module uim.domains.attributes.doubles.volts.milli;

/* Unit of power, equivalent to 10E-3 millivolts

Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electromotiveForce
means.measurement.units.si.millivolt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.milli */

@safe:
import uim.domains;

class DMilliVoltAttribute : DVoltAttribute {
  mixin(AttributeThis!("MilliVoltAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("millivolt")
      .registerPath("millivolt");
  }
}
mixin(AttributeCalls!("MilliVoltAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}