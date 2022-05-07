module uim.entities.attributes.integers.minutes;

/* any <- integer <- minutes <- minutess
Traits
is.dataFormat.integer
means.measurement.dimension.time
means.measurement.duration.minutes
has.measurement.fundamentalComponent.second */

@safe:
import uim.entities;

class DMinutesAttribute : DIntegerAttribute {
  mixin(AttributeThis!("MinutesAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("minutes")
      .registerPath("minutes");
  }    
}
mixin(AttributeCalls!("MinutesAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DMinutesAttribute);
    testAttribute(MinutesAttribute);
  }
}