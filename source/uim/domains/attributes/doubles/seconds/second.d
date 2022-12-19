module uim.domains.attributes.doubles.seconds.second;

/* Unit of measure for time in seconds

Inheritance
any <- float <- double <- second
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.time
means.measurement.units.si.second
has.measurement.fundamentalComponent.second
means.measurement.duration.seconds */

@safe:
import uim.domains;

class DSecondAttribute : DDoubleAttribute {
  mixin(AttributeThis!("SecondAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("second")
      .registerPath("second");
  }
}
mixin(AttributeCalls!("SecondAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}