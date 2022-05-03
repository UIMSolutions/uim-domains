module uim.entities.attributes.bytes.byte_;

@safe:
import uim.entities;

class DOOPAttributeByte : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeByte"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(ByteAttributeClass);
  }
}
mixin(OOPAttributeCalls!("OOPAttributeByte"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}