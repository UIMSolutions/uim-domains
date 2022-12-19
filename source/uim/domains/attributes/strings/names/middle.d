module uim.domains.attributes.strings.names.middle;

/* any <- char <- string <- middleName
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.person.middleName */

@safe:
import uim.domains;

class DMiddleNameAttribute : DStringAttribute {
  mixin(AttributeThis!("MiddleNameAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("middleName")
      .registerPath("middleName");
  }
}
mixin(AttributeCalls!("MiddleNameAttribute"));

version(test_uim_domains) {
  unittest {
    // TODO
  }
}