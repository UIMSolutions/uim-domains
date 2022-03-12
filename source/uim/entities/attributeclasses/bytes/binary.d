module uim.entities.attributeclasses.bytes.binary;

@safe:
import uim.entities;

class DOOPBinaryAttributeClass : DOOPAttributeClass {
  mixin(AttributeClassThis!("OOPBinaryAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"]);
  }
}
mixin(AttributeClassCalls!("OOPBinaryAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPBinaryAttributeClass);
    testAttributeClass(OOPBinaryAttributeClass);
  }
}