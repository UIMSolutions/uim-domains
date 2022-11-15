module uim.domains.attributes.doubles.joule;

/* Unit of measure for energy, work or heat in joules

Inheritance
any <- float <- double <- joule
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.energy
means.measurement.units.si.joule
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.domains;

class DJouleAttribute : DDoubleAttribute {
  mixin(AttributeThis!("JouleAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("joule")
      .registerPath("joule");
  }
}
mixin(AttributeCalls!("JouleAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}