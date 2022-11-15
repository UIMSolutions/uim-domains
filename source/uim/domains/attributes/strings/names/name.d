module uim.domains.attributes.strings.names.name;

/* any <- char <- string <- name
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.name */

@safe:
import uim.domains;

class DNameAttribute : DStringAttribute {
  mixin(AttributeThis!("NameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("name")
      .registerPath("name");
  }
}
mixin(AttributeCalls!("NameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}