module uim.entities.attributes.integers.displayorder;

@safe:
import uim.entities;

class DDisplayOrderAttribute : DIntegerAttribute {
  mixin(AttributeThis!("DisplayOrderAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("displayOrder")
      .registerPath("displayOrder");    
  }
}
mixin(AttributeCalls!("DisplayOrderAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DDisplayOrderAttribute);
    testAttribute(DisplayOrderAttribute);
  }
}