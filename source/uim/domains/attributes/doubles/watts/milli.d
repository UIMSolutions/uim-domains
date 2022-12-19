module uim.domains.attributes.doubles.watts.milli;

/* Unit of power, equivalent to 10E-3 watts

Inheritance
any <- float <- double <- watt <- milliwatt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.power
means.measurement.units.si.watt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
means.measurement.prefix.milli */

@safe:
import uim.domains;

class DMilliWattAttribute : DWattAttribute {
  mixin(AttributeThis!("MilliWattAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("milliwatt")
      .registerPath("milliwatt");
  }
}
mixin(AttributeCalls!("MilliWattAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}