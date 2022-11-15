module uim.domains.attributes.doubles.watts.kilo;

/* Unit of power, equivalent to 10E3 watts

Inheritance
any <- float <- double <- watt <- kilowatt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.power
means.measurement.units.si.watt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
means.measurement.prefix.kilo */

@safe:
import uim.domains;

class DKiloWattAttribute : DWattAttribute {
  mixin(AttributeThis!("KiloWattAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("kilowatt")
      .registerPath("kilowatt");
  }
}
mixin(AttributeCalls!("KiloWattAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}