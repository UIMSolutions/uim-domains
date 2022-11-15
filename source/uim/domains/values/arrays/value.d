module uim.domains.values.arrays.value;

@safe:
import uim.domains;

class DValueArrayValue : DArrayValue {
  mixin(ValueThis!("ValueArrayValue", "DValue[]"));  

  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }

  protected DValue[] _value;
  alias value = DValue.value;
  void set(DValue[] newValue) {
    _value = newValue;
  }
  O value(this O)(DValue[] newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  DValue[] value() {
    return _value; 
  }
}
mixin(ValueCalls!("ValueArrayValue", "DValue[]"));  