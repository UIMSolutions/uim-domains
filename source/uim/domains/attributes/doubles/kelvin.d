module uim.domains.attributes.doubles.kelvin;

/* Unit of measure for thermodynamic temperature in degrees kelvin

Inheritance
any <- float <- double <- kelvin
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.temperature
means.measurement.units.si.kelvin
has.measurement.fundamentalComponent.kelvin */

@safe:
import uim.domains;

class DKelvinAttribute : DDoubleAttribute {
  mixin(AttributeThis!("KelvinAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("kelvin")
      .registerPath("kelvin");
  }
}
mixin(AttributeCalls!("KelvinAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}