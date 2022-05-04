module uim.entities.attributes.strings.currencycode;

@safe:
import uim.entities;

// is.dataFormat.character
// is.dataFormat.big
// is.dataFormat.array
// means.measurement.currencyCode
class DCurrencyCodeAttribute : DStringAttribute {
  mixin(AttributeThis!("CurrencyCodeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("currencyCode")
      .registerPath("currencycode");
  }
}
mixin(AttributeCalls!("CurrencyCodeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}