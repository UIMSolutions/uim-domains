module uim.entities.attributes.integers.year;

/* Unit of measure for time in 'one solar orbit' interval

Inheritance
any <- integer <- year
Traits
is.dataFormat.integer
means.measurement.dimension.time
means.measurement.duration.years
has.measurement.fundamentalComponent.second */

@safe:
import uim.entities;

class DYearAttribute : DIntegerAttribute {
  mixin(AttributeThis!("YearAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("year")
      .registerPath("year");
  }    
}
mixin(AttributeCalls!("YearAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DYearAttribute);
    testAttribute(YearAttribute);
  }
}