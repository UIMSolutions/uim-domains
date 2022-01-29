module uim.entities.attributes.strings.country;

@safe:
import uim.entities;

// means.location.country
class DOOPCountryAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPCountryAttribute", "country"));
}
mixin(OOPAttributeCalls!("OOPCountryAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}