module uim.domains.attributes.integers.minute;

/* Unit of measure for time in 60 second interval

Inheritance
any <- integer <- minute
Traits
is.dataFormat.integer
means.measurement.dimension.time
means.measurement.duration.minutes
has.measurement.fundamentalComponent.second */

@safe:
import uim.domains;

class DMinuteAttribute : DIntegerAttribute {
  mixin(AttributeThis!("MinuteAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("minute")
      .registerPath("minute");
  }    
}
mixin(AttributeCalls!("MinuteAttribute"));

version(test_uim_domains) {
  unittest {
    testAttribute(new DMinuteAttribute);
    testAttribute(MinuteAttribute);
  }
}