module uim.entities.attributeclasses.integers.integer;

@safe:
import uim.entities;

class DOOPIntegerAttributeClass : DOOPAttributeClass {
  mixin(AttributeClassThis!"OOPIntegerAttributeClass");

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["integer"]);
  }
}
mixin(AttributeClassCalls!"OOPIntegerAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPIntegerAttributeClass);
    testAttributeClass(OOPIntegerAttributeClass);
  }
}