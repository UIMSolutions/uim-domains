module uim.domains.attributes.dates.date_;

@safe:
import uim.domains;

class DDateAttribute : DAttribute {
  mixin(AttributeThis!("DateAttribute"));

  override void initialize() {
    super.initialize;
    // means.measurement.date

    this
      .name("date")
      .dataFormats(["date"])
      .registerPath("date");
  }

  override DValue createValue() {
    return DateValue(this); }
}
mixin(AttributeCalls!("DateAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}