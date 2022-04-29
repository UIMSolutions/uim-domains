module uim.entities.attributeclasses.dates.datetimes.datetimeoffset;

@safe:
import uim.entities;

class DDatetimeOffsetAttributeClass : DDatetimeAttributeClass {
  mixin(AttributeClassThis!("DatetimeOffsetAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["time"])
      .name("datetimeOffset")
      .registerPath("datetimeoffset");
                // is.dataFormat.date
        /* means.measurement.date
        is.dataFormat.time
        means.measurement.time
        is.dataFormat.timeOffset */
  }
}
mixin(AttributeClassCalls!"DatetimeOffsetAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DDatetimeOffsetAttributeClass);
    testAttributeClass(DatetimeOffsetAttributeClass);
  }
}