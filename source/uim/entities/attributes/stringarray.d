module uim.entities.attributes.stringarray;

@safe:
import uim.entities;
import uim.core.datatypes.json;

class DOOPStringAttributeArray : DOOPAttributeArray {
  this() { super(); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(string[] newValue) { this(); this.value(newValue); }

  protected string[] _value;
  string[] value() { return _value; }

  override void value(Json newValue) {
    // // debug writeln("keywords -> ", newValue);
     if (newValue.type == Json.Type.string) {
      // debug writeln("Json.Type == string");
      this.value(newValue.get!string);  }
    else {
      // debug writeln("Json.Type == string[]");
      this.value(newValue.get!(Json[]).map!(a => a.get!string).array); }}

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

  override void value(string newValue) {
    this.value(newValue.split(",").map!(a => a.strip).array); }

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

  void value(string[] newValue) { // no whitespace before and after, remove empty itemsresults
    string[] results;
    foreach(v; newValue) results ~= v.split(","); 
    _value = results.map!(a => a.strip).filter!(a => a.length > 0).array; }
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
