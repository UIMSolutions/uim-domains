module uim.domains.attributes.datetimes.time;

@safe:
import uim.domains;

class DTimeAttribute : DAttribute {
  mixin(AttributeThis!("TimeAttribute"));

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
mixin(AttributeCalls!"TimeAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DTimeAttribute);
    testAttribute(TimeAttribute);
  }
}