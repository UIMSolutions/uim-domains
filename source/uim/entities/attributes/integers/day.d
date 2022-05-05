module uim.entities.attributes.integers.day;

@safe:
import uim.entities;

  /* Unit of measure for time in 'one earth rotation' interval
  is.dataFormat.integer
  means.measurement.dimension.time
  means.measurement.duration.days
  has.measurement.fundamentalComponent.second */
class DDayAttribute : DIntegerAttribute {
  mixin(AttributeThis!("DayAttribute"));

  override void initialize() {
    super.initialize;

  }
}
mixin(AttributeCalls!("DayAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DDayAttribute);
    testAttribute(DayAttribute);
  }
}