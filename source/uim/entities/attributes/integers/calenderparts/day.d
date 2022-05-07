module uim.entities.attributes.integers.calenderparts.day;

@safe:
import uim.entities;

/* means.calendar
means.calendar.day */
class DDayPartAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("DayPartAttribute"));

override void initialize() {
    super.initialize;

    this
      .name("daypart")
      .registerPath("daypart");
  }   
}
mixin(AttributeCalls!("DayPartAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DDayPartAttribute);
    testAttribute(DayPartAttribute);
  }
}