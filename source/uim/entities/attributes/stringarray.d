module uim.entities.attributes.stringarray;

@safe:
import uim.entities;

class DOOPAttributeStringArray : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }
  this(string aValue) { this(); this.fromString(aValue); }
  this(string[] aValue) { this(); this.values(aValue); }

  mixin(SProperty!("string[]", "values"));

  override Json toJson() {
    auto result = Json.emptyArray;
    foreach(v; _values) result ~= v;
    return result; }
  unittest {
    version(uim_entities) {
      // TOD tests
    }}

  override void fromJson(Json newValue) {
    _values = [];
    foreach(v; newValue.get!(Json[])) 
      _values ~= v.get!string; }
  unittest {
    version(uim_entities) {
      // TOD tests
    }}

  override string toString() {
    return _values.join(","); }
  unittest {
    version(uim_entities) {
      // TODO tests
    }}

  override void fromString(string newValue) {
    _values = newValue.split(",").map!(a => a.strip).filter!(a => a.length > 0).array; }
  unittest {
    version(uim_entities) {
      // TODO tests
    }}
}
auto OOPAttributeStringArray() { return new DOOPAttributeStringArray; }
auto OOPAttributeStringArray(Json json) { return new DOOPAttributeStringArray(json); }
auto OOPAttributeStringArray(string aValue) { return new DOOPAttributeStringArray(aValue); }
auto OOPAttributeStringArray(string[] aValue) { return new DOOPAttributeStringArray(aValue); }

unittest {
  version(uim_entities) {
    // TODO tests
  }}
