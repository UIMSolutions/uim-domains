module uim.entities.attributes.integers.big;

@safe:
import uim.entities;

class DOOPBigIntegerAttribute : DOOPIntegerAttribute {
  mixin(OOPAttributeThis!("OOPBigIntegerAttribute"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(OOPBigAttributeClass);
  }
}
mixin(OOPAttributeCalls!("OOPBigIntegerAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}