module uim.entities.values.arrays.string_;

@safe:
import uim.entities;

class DStringArrayValue : DArrayValue {
  mixin(ValueThis!("StringArrayValue", "string[]"));  

  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }

  protected string[] _value;
  alias value = DValue.value;
  void set(string[] newValue) {
    _value = newValue;
  }
  O value(this O)(string[] newValue) {
    this.set(newValue);
    return cast(O)this; 
  }
  string[] value() {
    return _value; 
  }

  override void set(string newValue) {
    this.value(newValue.split(",").map!(a => a.strip).array);
    // return this; 
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
}
mixin(ValueCalls!("StringArrayValue", "string[]"));  

version(test_uim_entities) {
  unittest {
    auto attribute = StringArrayValue(["a", "b", "c"]);
    assert(attribute.value.length == 3);
    assert(attribute.value[0] == "a");
    assert(attribute.value[1] == "b");
}}