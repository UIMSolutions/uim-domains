module uim.domains.attributes.doubles.seconds.milli;

/* Unit of measure for time in 10E-3 seconds

Inheritance
any <- float <- double <- second <- milliSecond
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.time
means.measurement.units.si.second
has.measurement.fundamentalComponent.second
means.measurement.duration.seconds
means.measurement.prefix.milli */

@safe:
import uim.domains;

class DMilliSecondAttribute : DSecondAttribute {
  mixin(AttributeThis!("MilliSecondAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("milliSecond")
      .registerPath("milliSecond");
  }
}
mixin(AttributeCalls!("MilliSecondAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}