module uim.domains.attributes.integers.integer;

@safe:
import uim.domains;

class DIntegerAttribute : DAttribute {
  mixin(AttributeThis!"IntegerAttribute");

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["integer"])
      .name("integer")
      .registerPath("integer");
  }    
}
mixin(AttributeCalls!"IntegerAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DIntegerAttribute);
    testAttribute(IntegerAttribute);
  }
}