module uim.entities.attributeclasses.decimals.currencies.currency;

@safe:
import uim.entities;

class DOOPCurrencyAttributeClass : DOOPDecimalAttributeClass {
  mixin(AttributeClassThis!("OOPCurrencyAttributeClass"));

  override void initialize() {
    super.initialize;

    // means.measurement.currency
  }
}
mixin(AttributeClassCalls!"OOPCurrencyAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new OOPCurrencyAttributeClass);
    testAttributeClass(OOPCurrencyAttributeClass);
  }
}