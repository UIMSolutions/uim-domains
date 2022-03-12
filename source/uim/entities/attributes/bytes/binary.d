module uim.entities.attributes.bytes.binary;

@safe:
import uim.entities;

class DOOPBinaryAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPBinaryAttribute"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(OOPBinaryAttributeClass);
  }
}
mixin(OOPAttributeCalls!("OOPBinaryAttribute"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}