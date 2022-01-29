module uim.entities.attributes.doubles.decimals.currencies.currency;

@safe:
import uim.entities;

class DOOPCurrencyAttribute : DOOPAttributeDecimal {
  mixin(OOPAttributeThis!("OOPCurrencyAttribute"));

  this(DOOPCurrencyAttribute attribute) { super(attribute); }
  this(double newValue) { this(); this.value(newValue); }

  override void initialize() {
    super.initialize;

    this
      .isArray(true)
      .isBig(true)
      .isCharacter(true);
/* 
means.attributeName
 */    
  }
}
mixin(OOPAttributeCalls!("OOPCurrencyAttribute"));

auto OOPCurrencyAttribute(double newValue) { return new DOOPCurrencyAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}