module uim.entities.attributes.strings.names.first;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.person.firstName */
class DFirstNameAttribute : DStringAttribute {
  mixin(AttributeThis!("FirstNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("firstName")
      .registerPath("firstname");
  }
}
mixin(AttributeCalls!("FirstNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}