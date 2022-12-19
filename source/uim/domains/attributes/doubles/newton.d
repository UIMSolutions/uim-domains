module uim.domains.attributes.doubles.newton;

/* Unit of measure for force or weight in newtons

Inheritance
any <- float <- double <- newton
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.force
means.measurement.units.si.newton
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.domains;

class DNewtonAttribute : DDoubleAttribute {
  mixin(AttributeThis!("NewtonAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("newton")
      .registerPath("newton");
  }
}
mixin(AttributeCalls!("NewtonAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}