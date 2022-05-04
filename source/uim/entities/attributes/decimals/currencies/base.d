module uim.entities.attributes.decimals.currencies.base;

@safe:
import uim.entities;

class DBaseCurrencyAttribute : DCurrencyAttribute {
  mixin(AttributeThis!("BaseCurrencyAttribute"));

  override void initialize() {
    super.initialize;

    // means.measurement.currency
    this
      .name("baseCurrency")
      .registerPath("baseCurrency");
  }
}
mixin(AttributeCalls!"BaseCurrencyAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DBaseCurrencyAttribute);
    testAttribute(BaseCurrencyAttribute);
  }
}