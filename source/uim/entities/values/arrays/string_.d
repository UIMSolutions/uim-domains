module source.uim.entities.values.arrays.string_;

@safe:
import uim.entities;

class DStringArrayValue : DArrayValue {
  mixin(ValueThis!("StringArrayValue", "string[]"));  

  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }
}
mixin(ValueCalls!("StringArrayValue", "string[]"));  
