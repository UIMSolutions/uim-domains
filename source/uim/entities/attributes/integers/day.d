module uim.entities.attributes.integers.day;

@safe:
import uim.entities;

/* is.dataFormat.integer
means.calendar
means.calendar.day */
class DDayAttribute : DIntegerAttribute {
  mixin(AttributeThis!("DayAttribute"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["integer"]);
  }
}
mixin(AttributeCalls!("DayAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DDayAttribute);
    testAttribute(DayAttribute);
  }
}