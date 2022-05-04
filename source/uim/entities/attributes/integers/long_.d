module uim.entities.attributes.integers.long_;

@safe:
import uim.entities;

class DLongAttribute : DAttribute {
  mixin(AttributeThis!("LongAttribute"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["long"])
      .name("long")
      .registerPath("long");
  }    
}
mixin(AttributeCalls!("LongAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DLongAttribute);
    testAttribute(LongAttribute);
  }
}