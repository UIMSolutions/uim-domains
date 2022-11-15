module uim.domains.attributes.doubles.radian;

/* Unit of measure for angle in radians

Inheritance
any <- float <- double <- radian
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.angle
means.measurement.units.si.radian
has.measurement.fundamentalComponent */

@safe:
import uim.domains;

class DRadianAttribute : DDoubleAttribute {
  mixin(AttributeThis!("RadianAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("radian")
      .registerPath("radian");
  }
}
mixin(AttributeCalls!("RadianAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}