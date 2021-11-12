module uim.entities.attributes.tags;

@safe:
import uim.entities;

class DOOPAttributeTags : DOOPAttributeStringArray {
  this() { super(); }
  this(Json newValues) { this(); this.values(newValues); }
  this(string newValues) { this(); this.values(newValues); }
  this(string[] newValues) { this(); this.values(newValues); }

  alias values = DOOPAttributeStringArray.values;
  O values(this O)(string newValues) {
    this.values(newValues
      .split("#").map!(a => a.strip).filter!(a => a.length > 0).join(",") // Split # tags
      .split(",").map!(a => a.strip).filter!(a => a.length > 0).array); // split , tags
    return cast(O)this; }

  O values(this O)(Json newValues) {
      debug writeln("keywords -> ", newValues);
      this.values(newValues.get!string[]); 
    return cast(O)this; }
 
  override Json toJson() {
    auto result = Json.emptyArray;
    foreach(v; _values) result ~= v;
    return result; }
  unittest {
    version(uim_entities) {
      // TOD tests
    }}

  override void fromJson(Json newValues) {
    _values = [];
    foreach(v; newValues.get!(Json[])) 
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
    this.values(newValue); }
  unittest {
    version(uim_entities) {
      // TODO tests
    }}
}
auto OOPAttributeTags() { return new DOOPAttributeTags; }
auto OOPAttributeTags(Json json) { return new DOOPAttributeTags(json); }
auto OOPAttributeTags(string aValue) { return new DOOPAttributeTags(aValue); }
auto OOPAttributeTags(string[] aValue) { return new DOOPAttributeTags(aValue); }

unittest {
  version(uim_entities) {
    // TODO tests
  }}
