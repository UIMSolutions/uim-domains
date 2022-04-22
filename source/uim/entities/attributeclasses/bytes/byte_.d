module uim.entities.attributeclasses.bytes.byte_;

@safe:
import uim.entities;

class DOOPByteAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPByteAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["byte"])
      .name("byte")
      .registerPath("byte");
  }
}
mixin(AttributeClassCalls!("OOPByteAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPByteAttributeClass);
    testAttributeClass(OOPByteAttributeClass);
  }
}