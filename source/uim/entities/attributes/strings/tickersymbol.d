module uim.entities.attributes.strings.tickersymbol;

/* any <- char <- string <- tickerSymbol
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.tickerSymbol */

@safe:
import uim.entities;

class DTickerSymbolAttribute : DStringAttribute {
  mixin(AttributeThis!("TickerSymbolAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("tickersymbol")
      .registerPath("tickersymbol");
  }
}
mixin(AttributeCalls!("TickerSymbolAttribute"));

version(test_uim_entities) {
  unittest {
  }  
}