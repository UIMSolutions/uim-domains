module uim.entities.attributes.bytes.binary;

@safe:
import uim.entities;

class DOOPBinaryAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPBinaryAttribute"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(BinaryAttributeClass);
  }
}
mixin(OOPAttributeCalls!("OOPBinaryAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}