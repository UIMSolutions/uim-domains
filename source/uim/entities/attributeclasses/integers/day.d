module uim.entities.attributeclasses.integers.day;

@safe:
import uim.entities;

/* is.dataFormat.integer
means.calendar
means.calendar.day */
class DDayAttributeClass : DIntegerAttributeClass {
  mixin(AttributeClassThis!("DayAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["integer"]);
  }
}
mixin(AttributeClassCalls!("DayAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DDayAttributeClass);
    testAttributeClass(DayAttributeClass);
  }
}