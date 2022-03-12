module uim.entities.attributeclasses.doubles.decimals.currencies.base;

// baseCurrency
// Value is expressed in the base currency units for the system

@safe:
import uim.entities;

class DOOPBaseCurrencyAttribute : DOOPAttributeDecimal {
  mixin(OOPAttributeThis!("OOPBaseCurrencyAttribute"));
  this(double newValue) { this(); this.value(newValue); }

  override void initialize() {
    super.initialize;

    /* is.dataFormat.numeric.shaped
means.measurement.currency
 */
  }
}
mixin(OOPAttributeCalls!("OOPBaseCurrencyAttribute"));
auto OOPBaseCurrencyAttribute(double newValue) { return new DOOPBaseCurrencyAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}