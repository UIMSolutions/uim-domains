module uim.entities.attributes.bytes.byte_;

@safe:
import uim.entities;

class DOOPAttributeByte : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeByte"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(OOPByteAttributeClass);
  }
}
mixin(OOPAttributeCalls!("OOPAttributeByte"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}