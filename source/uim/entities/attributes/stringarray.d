module uim.entities.attributes.stringarray;

@safe:
import uim.entities;
import uim.core.datatypes.json;

class DOOPAttributeStringArray : DOOPAttributeArray {
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

  unittest {
    version(test_uim_entities) {
      auto attribute = OOPAttributeStringArray;
      attribute.value(Json("a,b,c"));
      assert(attribute.value.length == 3);
      assert(attribute.value[0] == "a");

      attribute.value(["a","b","c"].toJson);
      assert(attribute.value.length == 3);
      assert(attribute.value[1] == "b");
      }}

  override void value(string newValue) {
    this.value(newValue.split(",").map!(a => a.strip).array); }

  unittest {
    version(test_uim_entities) {
      auto attribute = OOPAttributeStringArray;
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
  unittest {
    version(test_uim_entities) {
      auto attribute = OOPAttributeStringArray; 
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
  unittest {
    version(test_uim_entities) {
      // TODO Add Tests
      }}

  override string toString() {
    return _value.join(","); }
  unittest {
    version(test_uim_entities) {
      // TODO Add Tests
      }}
}
auto OOPAttributeStringArray() { return new DOOPAttributeStringArray; }
auto OOPAttributeStringArray(Json json) { return new DOOPAttributeStringArray(json); }
auto OOPAttributeStringArray(string aValue) { return new DOOPAttributeStringArray(aValue); }
auto OOPAttributeStringArray(string[] aValue) { return new DOOPAttributeStringArray(aValue); }

unittest {
  version(test_uim_entities) {
    assert(OOPAttributeStringArray.value == null);
    assert(OOPAttributeStringArray(Json("a, b, c")).value.length == 3);
    writeln(OOPAttributeStringArray(["a", "b", "c"].toJson).value);
    assert(OOPAttributeStringArray(["a", "b", "c"].toJson).value.length == 3);
    assert(OOPAttributeStringArray("a,b, c").value.length == 3);
    assert(OOPAttributeStringArray(["a", "b", "c"]).value.length == 3);
    }}
