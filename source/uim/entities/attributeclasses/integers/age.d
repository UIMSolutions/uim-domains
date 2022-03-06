module uim.entities.attributeclasses.integers.age;

@safe:
import uim.entities;

class DOOPAgeAttributeClass : DOOPIntegerAttributeClass {
  mixin(AttributeClassThis!"OOPAgeAttributeClass");

  override void initialize() {
    super.initialize;

    //means.demographic.age
    //means.measurement.age
  }
}
mixin(AttributeClassCalls!"OOPAgeAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPAgeAttributeClass);
    testAttributeClass(OOPAgeAttributeClass);
  }
}