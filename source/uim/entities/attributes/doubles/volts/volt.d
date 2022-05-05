module uim.entities.attributes.doubles.volts.volt;

/* Unit of measure for voltage, EMF, electrical potantial difference in volts

Inheritance
any <- float <- double <- volt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.electromotiveForce
means.measurement.units.si.volt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.volt
has.measurement.fundamentalComponent.ampere */

@safe:
import uim.entities;

class DVoltAttribute : DDoubleAttribute {
  mixin(AttributeThis!("VoltAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("volt")
      .registerPath("volt");
  }
}
mixin(AttributeCalls!("VoltAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}