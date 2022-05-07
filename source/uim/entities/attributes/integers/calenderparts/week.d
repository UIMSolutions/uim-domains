module uim.entities.attributes.integers.calenderparts.week;

/* any <- integer <- integerCalendarPart <- week
Traits
is.dataFormat.integer
means.calendar
means.calendar.week */

@safe:
import uim.entities;

class DWeekAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("WeekAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("week")
      .registerPath("week");
  }
}
mixin(AttributeCalls!("WeekAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DWeekAttribute);
    testAttribute(WeekAttribute);
  }
}