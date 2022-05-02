module uim.entities.attributeclasses.datetimes.timestamp;

@safe:
import uim.entities;

class DTimestampAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("TimestampAttributeClass"));

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
mixin(AttributeClassCalls!"TimestampAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DTimestampAttributeClass);
    testAttributeClass(TimestampAttributeClass);
  }
}