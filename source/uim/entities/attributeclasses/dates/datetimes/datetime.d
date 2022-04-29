module uim.entities.attributeclasses.datetimes.datetime;

@safe:
import uim.entities;

class DDatetimeAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("DatetimeAttributeClass"));

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
mixin(AttributeClassCalls!"DatetimeAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DDatetimeAttributeClass);
    testAttributeClass(DatetimeAttributeClass);
  }
}