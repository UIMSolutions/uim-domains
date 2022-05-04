module uim.entities.values.arrays.value;

@safe:
import uim.entities;

class DValueArrayValue : DArrayValue {
  mixin(ValueThis!("ValueArrayValue", "string[]"));  

  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }
}
mixin(ValueCalls!("ValueArrayValue", "string[]"));  