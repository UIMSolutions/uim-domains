module uim.entities.attributes.bytes.byte_;

@safe:
import uim.entities;

class DByteAttribute : DAttribute {
  mixin(AttributeThis!("ByteAttribute"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["byte"])
      .name("byte")
      .registerPath("byte");
  }
}
mixin(AttributeCalls!("ByteAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DByteAttribute);
    testAttribute(ByteAttribute);
  }
}