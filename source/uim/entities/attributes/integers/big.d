module uim.entities.attributes.integers.big;

@safe:
import uim.entities;

class DOOPBigIntegerAttribute : DOOPIntegerAttribute {
  mixin(OOPAttributeThis!("OOPBigIntegerAttribute"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(OOPBigIntegerAttributeClass);
  }
}
mixin(OOPAttributeCalls!("OOPBigIntegerAttribute"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}