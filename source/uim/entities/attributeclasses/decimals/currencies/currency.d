module uim.entities.attributeclasses.decimals.currencies.currency;

@safe:
import uim.entities;

class DCurrencyAttributeClass : DDecimalAttributeClass {
  mixin(AttributeClassThis!("CurrencyAttributeClass"));

  override void initialize() {
    super.initialize;

    // means.measurement.currency
  }
}
mixin(AttributeClassCalls!"CurrencyAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DCurrencyAttributeClass);
    testAttributeClass(CurrencyAttributeClass);
  }
}