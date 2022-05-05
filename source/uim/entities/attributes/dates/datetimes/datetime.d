module uim.entities.attributes.datetimes.datetime;

@safe:
import uim.entities;

class DDatetimeAttribute : DDateAttribute {
  mixin(AttributeThis!("DatetimeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["time"])
      .name("datetime")
      .registerPath("datetime");
      // means.measurement.date
      // means.measurement.time
  }
  override DValue createValue() {
    return DatetimeValue(this); }
}
mixin(AttributeCalls!"DatetimeAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DDatetimeAttribute);
    testAttribute(DatetimeAttribute);
  }
}