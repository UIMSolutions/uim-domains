module uim.entities.attributeclasses.integers.age;

@safe:
import uim.entities;

class DAgeAttributeClass : DIntegerAttributeClass {
  mixin(AttributeClassThis!("AgeAttributeClass"));

  override void initialize() {
    super.initialize;

    //means.demographic.age
    //means.measurement.age
    this
      .name("age")
      .registerPath("age");    
  }
}
mixin(AttributeClassCalls!"AgeAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DAgeAttributeClass);
    testAttributeClass(AgeAttributeClass);
  }
}