module uim.domains.attributes.strings.lastname;

@safe:
import uim.domains;

// means.identity.person.lastName
class DLastNameAttribute : DStringAttribute {
  mixin(AttributeThis!("LastNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("lastname")
      .registerPath("lastname");
  }
}
mixin(AttributeCalls!("LastNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}