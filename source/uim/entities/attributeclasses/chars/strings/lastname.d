module uim.entities.attributeclasses.chars.strings.lastname;

@safe:
import uim.entities;

// means.identity.person.lastName
class DOOPLastNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPLastNameAttributeClass"));
}
mixin(AttributeClassCalls!("OOPLastNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}