module uim.entities.attributes.stringarray;

@safe:
import uim.entities;
import uim.core.datatypes.json;

class DOOPStringAttributeArray : DOOPArrayAttribute {
  this() { super(); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(string[] newValue) { this(); this.value(newValue); }

  protected string[] _value;
  string[] value() { return _value; }

  override DOOPAttribute value(Json newValue) {
    if (newValue == Json(null)) this.value(cast(string[])null);
    switch(newValue.type) {
      case Json.Type.string: 
        this.value([newValue.get!string]);
        break;
      case Json.Type.array: 
        this.value(newValue.get!(Json[]).map!(a => a.get!string).array); 
        break;
      default: break;
    }
    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto attribute = OOPStringAttributeArray;
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
      auto attribute = OOPStringAttributeArray;
      attribute.value("a,b,c");
      assert(attribute.value.length == 3);
      assert(attribute.value[0] == "a");

      attribute.value("a,b, c");
      assert(attribute.value.length == 3);
      assert(attribute.value[2] == "c");
      }}

  DOOPAttribute value(string[] newValue) { // no whitespace before and after, remove empty itemsresults
    string[] results;
    foreach(v; newValue) results ~= v.split(","); 
    _value = results.map!(a => a.strip).filter!(a => a.length > 0).array;
    return this; 
    }
  version(test_uim_entities) {
    unittest {
      auto attribute = OOPStringAttributeArray; 
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

  override Json toJson() {
    auto result = Json.emptyArray;
    foreach(v; _value) result ~= v;
    return result; }
  version(test_uim_entities) {
    unittest {
      // TODO Add Tests
      }}

  override string toString() {
    return _value.join(","); }
  version(test_uim_entities) {
    unittest {
      // TODO Add Tests
      }}
}
auto OOPStringAttributeArray() { return new DOOPStringAttributeArray; }
auto OOPStringAttributeArray(Json json) { return new DOOPStringAttributeArray(json); }
auto OOPStringAttributeArray(string aValue) { return new DOOPStringAttributeArray(aValue); }
auto OOPStringAttributeArray(string[] aValue) { return new DOOPStringAttributeArray(aValue); }

unittest {
  version(test_uim_entities) {
    assert(OOPStringAttributeArray.value == null);
    assert(OOPStringAttributeArray(Json("a, b, c")).value.length == 3);
    writeln(OOPStringAttributeArray(["a", "b", "c"].toJson).value);
    assert(OOPStringAttributeArray(["a", "b", "c"].toJson).value.length == 3);
    assert(OOPStringAttributeArray("a,b, c").value.length == 3);
    assert(OOPStringAttributeArray(["a", "b", "c"]).value.length == 3);
    }}
