module uim.entities.attributeclasses.datetimes.time;

@safe:
import uim.entities;

class DTimeAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("TimeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"])
      .name("time")
      .registerPath("time");
      // means.measurement.date
      // means.measurement.time
  }
  override DValue createValue() {
    return TimeValue(this); }
}
mixin(AttributeClassCalls!"TimeAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DTimeAttributeClass);
    testAttributeClass(TimeAttributeClass);
  }
}