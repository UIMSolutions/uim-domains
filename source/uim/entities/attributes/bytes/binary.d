module uim.entities.attributes.bytes.binary;

@safe:
import uim.entities;

class DOOPByteAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPByteAttribute"));

  override void initialize() {
    super.initialize;

    this
      .isArray(true)
      .isByte(true);
  }
}
mixin(OOPAttributeCalls!("OOPByteAttribute"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}