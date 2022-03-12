module uim.entities.attributeclasses.bytes.byte_;

@safe:
import uim.entities;

class DOOPByteAttributeClass : DOOPAttributeClass {
  mixin(AttributeClassThis!("OOPByteAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["byte"]);
  }
}
mixin(AttributeClassCalls!("OOPByteAttributeClass"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}