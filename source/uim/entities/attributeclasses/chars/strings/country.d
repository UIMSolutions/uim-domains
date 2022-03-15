module uim.entities.attributeclasses.chars.strings.country;

@safe:
import uim.entities;

// means.location.country
class DOOPCountryAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPCountryAttributeClass"));
}
mixin(AttributeClassCalls!("OOPCountryAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}