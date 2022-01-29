module uim.entities.attributes.strings.city;

@safe:
import uim.entities;

// means.location.city
class DOOPCityAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPCityAttribute", "city"));
}
mixin(OOPAttributeCalls!("OOPCityAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}