module uim.domains.attributes.entities.currency;

@safe:
import uim.domains;

// A unique identifier for entity instances

class DCurrencyAttribute : DEntityAttribute {
  mixin(AttributeThis!("CurrencyAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("currency")
      .registerPath("currency");
  }  
}
mixin(AttributeCalls!("CurrencyAttribute"));

version(test_uim_domains) {
  unittest {
    testAttribute(new DCurrencyAttribute);
    testAttribute(CurrencyAttribute);
  }
}