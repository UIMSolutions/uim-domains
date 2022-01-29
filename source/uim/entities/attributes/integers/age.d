module uim.entities.attributes.integers.age;

@safe:
import uim.entities;

class DOOPAttributeAge : DOOPAttributeInteger {
  mixin(OOPAttributeThis!("OOPAttributeAge"));

  /*

is.dataFormat.integer
means.demographic.age
means.measurement.age

  */
}
mixin(OOPAttributeCalls!("OOPAttributeAge"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
