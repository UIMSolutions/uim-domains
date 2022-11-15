module uim.domains.attributes.integers.displayorder;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DDisplayOrderAttribute);
    testAttribute(DisplayOrderAttribute);
  }
}