/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
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