module uim.domains.attributes.strings.ip6address;

/* Internet Protocol V6 Address of the form XXXX:XXXX:XXXX:XXXX:XXXX:XXXX:XXXX:XXXX

Inheritance
any <- char <- string <- IP6Address
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.IP6Address */

@safe:
import uim.domains;

class DIP6AddressAttribute : DStringAttribute {
  mixin(AttributeThis!("IP6AddressAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("ip6address")
      .registerPath("ip6address");
  }
}
mixin(AttributeCalls!("IP6AddressAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}