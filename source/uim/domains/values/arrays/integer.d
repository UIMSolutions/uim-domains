module uim.domains.values.arrays.integer;

@safe:
import uim.domains;

class DIntegerArrayValue : DArrayValue {
  mixin(ValueThis!("IntegerArrayValue", "int[]"));  

  override void initialize() {
    super.initialize;

    this
      .isInteger(true);
  }

  protected int[] _value;
  alias value = DValue.value;
  void set(int[] newValue) {
    _value = newValue;
  }
  O value(this O)(int[] newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  int[] value() {
    return _value; 
  }
}
mixin(ValueCalls!("IntegerArrayValue", "int[]"));  
