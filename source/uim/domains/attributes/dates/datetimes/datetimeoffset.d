module uim.domains.attributes.dates.datetimes.datetimeoffset;

@safe:
import uim.domains;

class DDatetimeOffsetAttribute : DDatetimeAttribute {
  mixin(AttributeThis!("DatetimeOffsetAttribute"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["timeOffset"])
      .name("datetimeOffset")
      .registerPath("datetimeOffset");
        /* means.measurement.date
        means.measurement.time
        is.dataFormat.timeOffset */
  }
}
mixin(AttributeCalls!"DatetimeOffsetAttribute");

version(test_uim_domains) {
  unittest {
    testAttribute(new DDatetimeOffsetAttribute);
    testAttribute(DatetimeOffsetAttribute);
  }
}