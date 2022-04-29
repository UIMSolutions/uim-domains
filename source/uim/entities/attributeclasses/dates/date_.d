module uim.entities.attributeclasses.dates.date_;

@safe:
import uim.entities;

class DDateAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("DateAttributeClass"));

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
mixin(AttributeClassCalls!("DateAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}