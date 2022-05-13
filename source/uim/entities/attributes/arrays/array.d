module uim.entities.attributes.arrays.array;

@safe:
import uim.entities;

class DArrayAttribute : DAttribute {
  mixin(AttributeThis!("ArrayAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("arrayAttribute")
      .addDataFormats(["array"])
      .registerPath("arrayAttribute");
  }
}
mixin(AttributeCalls!"ArrayAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DArrayAttribute);
    testAttribute(ArrayAttribute);
  }
}