module uim.entities.attributeclasses.uuids.entities.currency;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DCurrencyIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("CurrencyIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("currencyId")
      .registerPath("currencyid");
  }  
}
mixin(AttributeClassCalls!("CurrencyIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DCurrencyIdAttributeClass);
    testAttributeClass(CurrencyIdAttributeClass);
  }
}