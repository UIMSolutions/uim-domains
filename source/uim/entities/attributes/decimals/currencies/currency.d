module uim.entities.attributes.decimals.currencies.currency;

@safe:
import uim.entities;

class DCurrencyAttribute : DDecimalAttribute {
  mixin(AttributeThis!("CurrencyAttribute"));

  override void initialize() {
    super.initialize;

    /* is.dataFormat.numeric.shaped
    means.measurement.currency */
  }
}
mixin(AttributeCalls!"CurrencyAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DCurrencyAttribute);
    testAttribute(CurrencyAttribute);
  }
}