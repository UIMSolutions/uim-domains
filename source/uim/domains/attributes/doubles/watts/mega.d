module uim.domains.attributes.doubles.watts.mega;

/* megawatt
Description

Unit of power, equivalent to 10E6 watts

Inheritance
any <- float <- double <- watt <- megawatt
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.power
means.measurement.units.si.watt
has.measurement.fundamentalComponent.kilogram
has.measurement.fundamentalComponent.meter
has.measurement.fundamentalComponent.second
means.measurement.prefix.mega */

import uim.domains;

class DMegaWattAttribute : DWattAttribute {
  mixin(AttributeThis!("MegaWattAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("megawatt")
      .registerPath("megawatt");
  }
}
mixin(AttributeCalls!("MegaWattAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}