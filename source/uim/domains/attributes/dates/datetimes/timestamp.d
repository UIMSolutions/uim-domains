module uim.domains.attributes.datetimes.timestamp;

@safe:
import uim.domains;

class DTimestampAttribute : DLongAttribute {
  mixin(AttributeThis!("TimestampAttribute"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["timestamp"])
      .name("timestamp")
      .registerPath("timestamp");
  }
  override DValue createValue() {
    return TimestampValue(this); }
}
mixin(AttributeCalls!"TimestampAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DTimestampAttribute);
    testAttribute(TimestampAttribute);
  }
}