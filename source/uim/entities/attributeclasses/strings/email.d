module uim.entities.attributeclasses.strings.email;

@safe:
import uim.entities;

// means.identity.person.email
class DEmailAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("EmailAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("email")
      .registerPath("email");
  }
}
mixin(AttributeClassCalls!("EmailAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}