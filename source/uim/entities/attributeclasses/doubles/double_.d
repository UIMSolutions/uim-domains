module uim.entities.attributeclasses.doubles.double_;

@safe:
import uim.entities;

class DDoubleAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("DoubleAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .isDouble(true)
      .name("double")
      .registerPath("double");
  }
}
mixin(AttributeClassCalls!("DoubleAttributeClass"));

version(test_uim_entities) {
  unittest {
  }  
}