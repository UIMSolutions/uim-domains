module uim.entities.attributeclasses.decimals.currencies.base;

@safe:
import uim.entities;

class DBaseCurrencyAttributeClass : DCurrencyAttributeClass {
  mixin(AttributeClassThis!("BaseCurrencyAttributeClass"));

  override void initialize() {
    super.initialize;

    // means.measurement.currency
    this
      .name("baseCurrency")
      .registerPath("baseCurrency");
  }
}
mixin(AttributeClassCalls!"BaseCurrencyAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DBaseCurrencyAttributeClass);
    testAttributeClass(BaseCurrencyAttributeClass);
  }
}