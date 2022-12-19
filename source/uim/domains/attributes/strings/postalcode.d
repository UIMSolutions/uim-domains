module uim.domains.attributes.strings.postalcode;

/* Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.location.postalCode */

@safe:
import uim.domains;

class DPostalCodeAttribute : DStringAttribute {
  mixin(AttributeThis!("PostalCodeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("postalcode")
      .registerPath("postalcode");
  }
}
mixin(AttributeCalls!("PostalCodeAttribute"));

version(test_uim_domains) {
  unittest {
  }  
}