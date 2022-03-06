module uim.entities.attributeclasses.integers.big;

@safe:
import uim.entities;

class DOOPBigIntegerAttributeClass : DOOPIntegerAttributeClass {
  mixin(AttributeClassThis!("OOPBigIntegerAttributeClass"));

  override void initialize() {
    super.initialize;

/*     this
      .isBig(true)
      .isInteger(true); */
  }
}
mixin(AttributeClassCalls!("OOPBigIntegerAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPBigAttributeClass);
    testAttributeClass(OOPBigAttributeClass);
  }
}