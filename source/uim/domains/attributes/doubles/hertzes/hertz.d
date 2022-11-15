module uim.domains.attributes.doubles.hertzes.hertz;

/* Unit of measure for frequency in hertz

Inheritance
any <- float <- double <- hertz
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.frequency
means.measurement.units.si.hertz
has.measurement.fundamentalComponent.second */

// hertz
// Unit of measure for luminous intensity in hertzs

@safe:
import uim.domains;

class DHertzAttribute : DDoubleAttribute {
  mixin(AttributeThis!("HertzAttribute"));

  override void initialize() {
    super.initialize;

/* is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.frequency
means.measurement.units.si.hertz
has.measurement.fundamentalComponent.second */

    this
      .name("hertz")
      .registerPath("hertz");
  }
}
mixin(AttributeCalls!("HertzAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}