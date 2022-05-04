module uim.entities.values.arrays.integer;

@safe:
import uim.entities;

class DIntegerArrayValue : DArrayValue {
  mixin(ValueThis!("IntegerArrayValue", "int[]"));  

  override void initialize() {
    super.initialize;

    this
      .isInteger(true);
  }
}
mixin(ValueCalls!("IntegerArrayValue", "int[]"));  
