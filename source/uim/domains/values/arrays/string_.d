/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.arrays.string_;

@safe:
import uim.domains;

class DStringArrayValue : DArrayValue {
  mixin(ValueThis!("StringArrayValue", "string[]"));  

  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }

  protected string[] _values;
  alias value = DValue.value;
  void set(string[] newValues) {
    _values = newValues.filter!(v => v.length > 0).array;
  }
  O value(this O)(string[] newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  string[] value() {
    return _values; 
  }

  override void set(string newValue) {
    debug writeln("In DStringArrayValue - ", newValue);
    this.value(newValue.split(",").map!(a => a.strip).array);
    debug writeln("After split - ", this.value);
  }

  override void set(Json newValue) {
    if (newValue == Json(null)) this.value(cast(string[])null);
    switch(newValue.type) {
      case Json.Type.string: 
        /* return  */this.value(newValue.get!string); 
        break;
      case Json.Type.array: 
        /* return  */this.value(newValue.get!(Json[]).map!(a => a.get!string).array);
        break; 
      //case Json.Type.object: 
        /* return  this.fromJson(newValue); */
        // break; 
      default: break;
    }
    // return this;
  }
  override Json toJson() {
    auto result = Json.emptyArray;
    _values.each!(v => result ~= Json(v));
    return result;
  }
  override string toString() {
    return this.value.join(",");
  }
}
mixin(ValueCalls!("StringArrayValue", "string[]"));  

version(test_uim_domains) {
  unittest {
    auto attribute = StringArrayValue(["a", "b", "c"]);
    assert(attribute.value.length == 3);
    assert(attribute.value[0] == "a");
    assert(attribute.value[1] == "b");
}}