module uim.entities.attributeclasses.decimals.currencies.base;

@safe:
import uim.entities;

class DOOPBaseCurrencyAttributeClass : DOOPCurrencyAttributeClass {
  mixin(AttributeClassThis!("OOPBaseCurrencyAttributeClass"));

  override void initialize() {
    super.initialize;

    // means.measurement.currency
    // means.measurement.currency
  }
}
mixin(AttributeClassCalls!"OOPBaseCurrencyAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new OOPBaseCurrencyAttributeClass);
    testAttributeClass(OOPBaseCurrencyAttributeClass);
  }
}