module uim.entities.attributes.datetimes.datetime;

@safe:
import uim.entities;

class DDatetimeAttribute : DAttribute {
  mixin(AttributeThis!("DatetimeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["datetime"])
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