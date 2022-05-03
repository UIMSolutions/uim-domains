module uim.entities.attributeclasses.integers.big;

@safe:
import uim.entities;

class DOOPBigAttributeClass : DIntegerAttributeClass {
  mixin(AttributeClassThis!("OOPBigAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["big"]);
  }
}
mixin(AttributeClassCalls!("OOPBigAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPBigAttributeClass);
    testAttributeClass(OOPBigAttributeClass);
  }
}