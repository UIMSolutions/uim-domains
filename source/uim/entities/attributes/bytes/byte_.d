module uim.entities.attributes.bytes.byte_;

@safe:
import uim.entities;

class DOOPAttributeByte : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeByte"));

  override void initialize() {
    super.initialize;

/* is.dataFormat.byte */
  }
}
mixin(OOPAttributeCalls!("OOPAttributeByte"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}