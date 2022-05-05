module source.uim.entities.attributes.codes.currency;

@safe:
import uim.entities;

// is.dataFormat.character
// is.dataFormat.big
// is.dataFormat.array
// means.measurement.currencyCode
// Value is a ISO 4217 currency code
class DCurrencyCodeAttribute : DStringStringAttribute {
  mixin(AttributeThis!("CurrencyCodeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("currencyCode")
      .registerPath("currencyCode");
  }
}
mixin(AttributeCalls!("CurrencyCodeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}