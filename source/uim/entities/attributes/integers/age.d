module uim.entities.attributes.integers.age;

@safe:
import uim.entities;

class DOOPAgeAttribute : DOOPIntegerAttribute {
  mixin(OOPAttributeThis!("OOPAgeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .attributeClass(AgeAttributeClass);
  }
  /*

is.dataFormat.integer
means.demographic.age
means.measurement.age

  */
}
mixin(OOPAttributeCalls!("OOPAgeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
