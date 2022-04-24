module uim.entities.values.string_;

@safe:
import uim.entities;

class DStringValue : DValue {
  mixin(ValueThis!("StringValue", "string"));  
  
  override void initialize() {
    super.initialize;

    this
      .isString(true);
  }

  mixin(OProperty!("string", "value"));
  O value(this O)(DStringValue newValue) {
    if (newValue) {
      this
        .isNullable(newValue.isNullable)
        .isNull(newValue.isNull)
        .value(newValue.value);
    }
    return cast(O)this;
  }
  version(test_uim_entities) {
    unittest {    
      assert(StringValue("test").value == "test");

      assert(StringValue.value("test") == "test");
      assert(StringValue.value("test") < "xxxx");
      assert(StringValue.value("test") <= "xxxx");
      assert(StringValue.value("test") <= "test");
      assert(StringValue.value("test") > "aaaa");
      assert(StringValue.value("test") >= "aaaa");
      assert(StringValue.value("test") >= "test");    
  }}

  string opCall() { return _value; } 
  O opCall(this O)(string newValue) { 
    _value = newValue;
    return cast(O)this; }
  O opCall(this O)(Json newValue) { 
    if (newValue.type = Json.Type.string) _value = newValue.get!string;
    return cast(O)this; }
  O opCall(this O)(DStringValue newValue) {
    this.value(newValue);
    return cast(O)this; }

  version(test_uim_entities) {
    unittest { 
      auto a = StringValue("avalue");
      auto b = StringValue("bvalue");
      assert(a(b) == "bvalue");
  }}

  bool opEquals(string otherValue) {
    return (_value == otherValue);
  }

  int opCmp(string otherValue) {
    if (_value < otherValue) return -1;
    if (_value == otherValue) return 0;
    return 1;
  }

  version(test_uim_entities) {
    unittest {    
      assert(StringValue("test") == "test");
      assert(StringValue("test") < "xxxx");
      assert(StringValue("test") <= "xxxx");
      assert(StringValue("test") <= "test");
      assert(StringValue("test") > "aaaa");
      assert(StringValue("test") >= "aaaa");
      assert(StringValue("test") >= "test");

      assert(StringValue()("test") == "test");
      assert(StringValue()("test") < "xxxx");
      assert(StringValue()("test") <= "xxxx");
      assert(StringValue()("test") <= "test");
      assert(StringValue()("test") > "aaaa");
      assert(StringValue()("test") >= "aaaa");
      assert(StringValue()("test") >= "test");    
  }}

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(_value); }
  override string toString() { 
    if (isNull) return null; 
    return _value; }
}
mixin(ValueCalls!("StringValue", "string"));  

version(test_uim_entities) {
  unittest {  
    writeln("StringValue");
    writeln("-> ", StringValue("test"));
    writeln("-> ", StringValue("test").toJson);
}}