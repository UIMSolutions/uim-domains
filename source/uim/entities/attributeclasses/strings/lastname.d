module uim.entities.attributeclasses.chars.strings.lastname;

@safe:
import uim.entities;

// means.identity.person.lastName
class DOOPLastNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPLastNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("lastname")
      .registerPath("lastname");
  }
}
mixin(AttributeClassCalls!("OOPLastNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}