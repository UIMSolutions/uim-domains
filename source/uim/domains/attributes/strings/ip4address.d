module uim.domains.attributes.strings.ip4address;

/* Internet Protocol V4 Address of the form DDD.DDD.DDD.DDD

Inheritance
any <- char <- string <- IP4Address
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.IP4Address */

@safe:
import uim.domains;

class DIP4AddressAttribute : DStringAttribute {
  mixin(AttributeThis!("IP4AddressAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("ip4address")
      .registerPath("ip4address");
  }
}
mixin(AttributeCalls!("IP4AddressAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}