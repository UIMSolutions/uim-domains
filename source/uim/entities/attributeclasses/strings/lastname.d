module uim.entities.attributeclasses.strings.lastname;

@safe:
import uim.entities;

// means.identity.person.lastName
class DLastNameAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("LastNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("lastname")
      .registerPath("lastname");
  }
}
mixin(AttributeClassCalls!("LastNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}