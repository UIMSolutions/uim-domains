module uim.entities.attributeclasses.bytes.binary;

@safe:
import uim.entities;

class DBinaryAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("BinaryAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"])
      .name("binary")
      .registerPath("binary");
  }
}
mixin(AttributeClassCalls!("BinaryAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DBinaryAttributeClass);
    testAttributeClass(BinaryAttributeClass);
  }
}