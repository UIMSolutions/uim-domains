module uim.entities.attributes.stringarray;

@safe:
import uim.entities;
import uim.core.datatypes.json;

class DOOPStringArrayAttribute : DOOPArrayAttribute {
  mixin(OOPAttributeThis!("OOPStringArrayAttribute"));
  this(string[] newValue) { this(); this.value(newValue); }

  protected string[] _value;
  string[] value() { return _value; }
  DOOPAttribute value(string[] newValue) { // no whitespace before and after, remove empty itemsresults
    string[] results;
    foreach(v; newValue) results ~= v.split(","); 
    _value = results.map!(a => a.strip).filter!(a => a.length > 0).array;
    return this; 
    }
  version(test_uim_entities) {
    unittest {
      auto attribute = OOPStringArrayAttribute; 
      attribute.value(["a", "b", "c"]);
      assert(attribute.value.length == 3);
      assert(attribute.value[0] == "a");

      attribute.value(["a", " b", "c"]);
      assert(attribute.value.length == 3);
      assert(attribute.value[1] == "b");

      attribute.value(["a", " b", ""]);
      assert(attribute.value.length == 2);
      assert(attribute.value[1] == "b");
      }}

  override DOOPAttribute value(Json newValue) {
    if (newValue == Json(null)) this.value(cast(string[])null);
    switch(newValue.type) {
      case Json.Type.string: 
        return this.value(newValue.get!string);
      case Json.Type.array: 
        return this.value(newValue.get!(Json[]).map!(a => a.get!string).array); 
      case Json.Type.object: 
        return this.fromJson(newValue); 
      default: break;
    }
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto attribute = OOPStringArrayAttribute;
      attribute.value(Json("a,b,c"));
      assert(attribute.value.length == 3);
      assert(attribute.value[0] == "a");

      attribute.value(["a","b","c"].toJson);
      assert(attribute.value.length == 3);
      assert(attribute.value[1] == "b");
      }}

  override DOOPAttribute value(string newValue) {
    this.value(newValue.split(",").map!(a => a.strip).array);
    return this; 
  }

  version(test_uim_entities) {
    unittest {
      auto attribute = OOPStringArrayAttribute;
      attribute.value("a,b,c");
      assert(attribute.value.length == 3);
      assert(attribute.value[0] == "a");

      attribute.value("a,b, c");
      assert(attribute.value.length == 3);
      assert(attribute.value[2] == "c");
      }}

  override string stringValue() {
    return _value.join(",");
  }

  override Json jsonValue() {
    auto result = Json.emptyArray;
    foreach(v; _value) result ~= v;
    return result; 
  }
}
mixin(OOPAttributeCalls!("OOPStringArrayAttribute"));
auto OOPStringArrayAttribute(string[] aValue) { return new DOOPStringArrayAttribute(aValue); }

unittest {
  version(test_uim_entities) {
    assert(OOPStringArrayAttribute.value == null);
    assert(OOPStringArrayAttribute(Json("a, b, c")).value.length == 3);
    writeln(OOPStringArrayAttribute(["a", "b", "c"].toJson).value);
    assert(OOPStringArrayAttribute(["a", "b", "c"].toJson).value.length == 3);
    assert(OOPStringArrayAttribute("a,b, c").value.length == 3);
    assert(OOPStringArrayAttribute(["a", "b", "c"]).value.length == 3);
    }}
