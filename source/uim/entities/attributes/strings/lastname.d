module uim.entities.attributes.strings.lastname;

@safe:
import uim.entities;

// means.identity.person.lastName
class DOOPLastNameAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPLastNameAttribute", "lastname"));
}
mixin(OOPAttributeCalls!("OOPLastNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}