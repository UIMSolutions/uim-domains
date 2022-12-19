module uim.domains.attributes.doubles.ohms.ohm;

/* Description

Unit of measure for electrical resistance, impedance, reactance in ohms

Inheritance
any <- float <- double <- ohm
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.resistance
means.measurement.units.si.ohm
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere */

@safe:
import uim.domains;

class DOhmAttribute : DDoubleAttribute {
  mixin(AttributeThis!("OhmAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("ohm")
      .registerPath("ohm");
  }
}
mixin(AttributeCalls!("OhmAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}