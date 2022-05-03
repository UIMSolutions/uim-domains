module uim.entities.attributeclasses.bytes.byte_;

@safe:
import uim.entities;

class DByteAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("ByteAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["byte"])
      .name("byte")
      .registerPath("byte");
  }
}
mixin(AttributeClassCalls!("ByteAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DByteAttributeClass);
    testAttributeClass(ByteAttributeClass);
  }
}