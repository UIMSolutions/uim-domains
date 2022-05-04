module uim.entities.attributes.strings.fullname;

@safe:
import uim.entities;

/* is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.person.fullName */
class DFullNameAttribute : DStringAttribute {
  mixin(AttributeThis!("FullNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("fullName")
      .registerPath("fullname");
  }
}
mixin(AttributeCalls!("FullNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}