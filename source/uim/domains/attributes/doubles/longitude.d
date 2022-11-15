module uim.domains.attributes.doubles.longitude;

/* any <- float <- double <- longitude
Traits
is.dataFormat.floatingPoint
is.dataFormat.big
means.location.longitude */

@safe:
import uim.domains;

class DLongitudeAttribute : DDoubleAttribute {
  mixin(AttributeThis!("LongitudeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("longitude")
      .registerPath("longitude");
  }
}
mixin(AttributeCalls!("LongitudeAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}