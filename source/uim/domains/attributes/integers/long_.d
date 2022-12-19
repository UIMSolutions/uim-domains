module uim.domains.attributes.integers.long_;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DLongAttribute);
    testAttribute(LongAttribute);
  }
}