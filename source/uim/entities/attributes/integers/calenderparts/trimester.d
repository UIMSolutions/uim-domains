module uim.entities.attributes.integers.calenderparts.trimester;

/* any <- integer <- integerCalendarPart <- trimester
Traits
is.dataFormat.integer
means.calendar
means.calendar.trimester */

class DTrimesterAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("TrimesterAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("trimester")
      .registerPath("trimester");
  }
}
mixin(AttributeCalls!("TrimesterAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DTrimesterAttribute);
    testAttribute(TrimesterAttribute);
  }
}