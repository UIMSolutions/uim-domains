module uim.domains.attributes.doubles.pascals.pascal;

/* pascal
Description

Unit of measure for pressure or stress in pascals

Inheritance
any <- float <- double <- pascal
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.pressure
means.measurement.units.si.pascal
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.domains;

class DPascalAttribute : DDoubleAttribute {
  mixin(AttributeThis!("PascalAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("pascal")
      .registerPath("pascal");
  }
}
mixin(AttributeCalls!("PascalAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}