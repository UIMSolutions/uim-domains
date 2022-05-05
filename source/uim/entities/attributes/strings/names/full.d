module uim.entities.attributes.strings.names.full;

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
      .registerPath("fullName");
  }
}
mixin(AttributeCalls!("FullNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}