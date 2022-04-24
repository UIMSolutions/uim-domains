module uim.entities.attributeclasses.chars.strings.currencycode;

@safe:
import uim.entities;

// is.dataFormat.character
// is.dataFormat.big
// is.dataFormat.array
// means.measurement.currencyCode
class DCurrencyCodeAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("CurrencyCodeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("currencyCode")
      .registerPath("currencycode");
  }
}
mixin(AttributeClassCalls!("CurrencyCodeAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}