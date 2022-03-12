module uim.entities.attributes.doubles.decimals.currencies.currency;

@safe:
import uim.entities;

/* means.attributeName */  
class DOOPCurrencyAttribute : DOOPDecimalAttribute {
  mixin(OOPAttributeThis!("OOPCurrencyAttribute"));

  this(DOOPCurrencyAttribute attribute) { super(attribute); }
  this(double newValue) { this(); this.value(newValue); }

  override void initialize() {
    super.initialize;

/* Wrong!    this
      .isArray(true)
      .isBig(true)
      .isCharacter(true); 
 */  }
}
mixin(OOPAttributeCalls!("OOPCurrencyAttribute"));
auto OOPCurrencyAttribute(double newValue) { return new DOOPCurrencyAttribute(newValue); }

unittest {
  version(test_uim_entities) {  
/*     assert(OOPCurrencyAttribute.isArray);
    assert(OOPCurrencyAttribute.isBig);
    assert(OOPCurrencyAttribute.isCharacter);
 */}}