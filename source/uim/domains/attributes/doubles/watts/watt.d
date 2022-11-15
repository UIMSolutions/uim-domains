module uim.domains.attributes.doubles.watts.watt;

/* Unit of measure for power or radiant flux in watts

Inheritance
any <- float <- double <- watt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.power
means.measurement.units.si.watt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second */

@safe:
import uim.domains;

class DWattAttribute : DDoubleAttribute {
  mixin(AttributeThis!("WattAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("watt")
      .registerPath("watt");
  }
}
mixin(AttributeCalls!("WattAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}