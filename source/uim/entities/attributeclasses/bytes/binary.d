module uim.entities.attributeclasses.bytes.binary;

@safe:
import uim.entities;

class DOOPByteAttributeClass : DOOPAttributeClass {
  mixin(AttributeClassThis!("OOPByteAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["array"]);
  }
}
mixin(AttributeClassCalls!("OOPByteAttributeClass"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}