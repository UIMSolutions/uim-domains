module uim.entities.attributes.integers.age;

@safe:
import uim.entities;

class DOOPAgeAttribute : DOOPAttributeInteger {
  mixin(OOPAttributeThis!("OOPAgeAttribute"));

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
