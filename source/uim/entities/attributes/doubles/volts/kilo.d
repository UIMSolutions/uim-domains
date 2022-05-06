module uim.entities.attributes.doubles.volts.kilo;

/* Unit of power, equivalent to 10E3 volts

Inheritance
any <- float <- double <- volt <- kilovolt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electromotiveForce
means.measurement.units.si.volt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere
means.measurement.prefix.kilo */

@safe:
import uim.entities;

class DKiloVoltAttribute : DVoltAttribute {
  mixin(AttributeThis!("KiloVoltAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("kilovolt")
      .registerPath("kilovolt");
  }
}
mixin(AttributeCalls!("KiloVoltAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}