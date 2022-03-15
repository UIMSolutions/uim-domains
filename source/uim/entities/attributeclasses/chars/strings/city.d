module uim.entities.attributeclasses.chars.strings.city;

@safe:
import uim.entities;

// means.location.city
class DOOPCityAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPCityAttributeClass"));
}
mixin(AttributeClassCalls!("OOPCityAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}