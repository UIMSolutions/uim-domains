module uim.entities.attributeclasses.strings.fullname;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.person.fullName */
class DFullNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("FullNameAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("fullName")
      .registerPath("fullname");
  }
}
mixin(AttributeClassCalls!("FullNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}