module uim.entities.attributeclasses.strings.firstname;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.person.firstName */
class DFirstNameAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("FirstNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("firstName")
      .registerPath("firstname");
  }
}
mixin(AttributeClassCalls!("FirstNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}