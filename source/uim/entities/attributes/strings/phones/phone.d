module uim.entities.attributes.strings.phones.phone;

/* any <- char <- string <- phone
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.service.phone */

@safe:
import uim.entities;

class DPhoneAttribute : DStringAttribute {
  mixin(AttributeThis!("PhoneAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("phone")
      .registerPath("phone");
  }
}
mixin(AttributeCalls!("PhoneAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
