module uim.entities.attributes.integers.integer;

@safe:
import uim.entities;

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