module uim.entities.attributes.dates.datetimes.datetimeoffset;

@safe:
import uim.entities;

class DDatetimeOffsetAttribute : DDatetimeAttribute {
  mixin(AttributeThis!("DatetimeOffsetAttribute"));

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
mixin(AttributeCalls!"DatetimeOffsetAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DDatetimeOffsetAttribute);
    testAttribute(DatetimeOffsetAttribute);
  }
}