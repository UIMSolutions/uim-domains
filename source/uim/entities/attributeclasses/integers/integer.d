module uim.entities.attributeclasses.integers.integer;

@safe:
import uim.entities;

class DIntegerAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!"IntegerAttributeClass");

  override void initialize() {
    super.initialize;

    this
      .addDataFormats(["integer"])
      .name("integer")
      .registerPath("integer");
  }    
}
mixin(AttributeClassCalls!"IntegerAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DIntegerAttributeClass);
    testAttributeClass(IntegerAttributeClass);
  }
}