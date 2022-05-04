module uim.entities.attributes.strings.email;

@safe:
import uim.entities;

// means.identity.person.email
class DEmailAttribute : DStringAttribute {
  mixin(AttributeThis!("EmailAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("email")
      .registerPath("email");
  }
}
mixin(AttributeCalls!("EmailAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}