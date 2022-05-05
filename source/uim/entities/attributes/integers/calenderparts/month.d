module uim.entities.attributes.integers.calenderparts.month;

/* any <- integer <- integerCalendarPart <- month
Traits
is.dataFormat.integer
means.calendar
means.calendar.month */

@safe:
import uim.entities;

/* means.calendar
means.calendar.day */
class DMonthpartAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("MonthpartAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("monthpart")
      .registerPath("monthpart");
  }
}
mixin(AttributeCalls!("MonthpartAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DMonthpartAttribute);
    testAttribute(MonthpartAttribute);
  }
}