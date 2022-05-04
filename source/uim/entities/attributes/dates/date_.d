module uim.entities.attributes.dates.date_;

@safe:
import uim.entities;

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

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}