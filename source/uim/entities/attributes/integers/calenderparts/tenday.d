module uim.entities.attributes.integers.calenderparts.tenday;

/* any <- integer <- integerCalendarPart <- tenday
Traits
is.dataFormat.integer
means.calendar
means.calendar.tenday */

class DTendayAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("TendayAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("tenday")
      .registerPath("tenday");
  }
}
mixin(AttributeCalls!("TendayAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DTendayAttribute);
    testAttribute(TendayAttribute);
  }
}