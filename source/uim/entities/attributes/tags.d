module uim.entities.attributes.tags;

@safe:
import uim.entities;

class DOOPAttributeTags : DOOPAttributeStringArray {
  this() { super(); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(string[] newValue) { this(); this.value(newValue); }

  alias value = DOOPAttributeStringArray.value;
  unittest {
    version(test_uim_entities) {
      // TODO
      }}
  override void value(string[] newValue) {
    string[] results;
    foreach(ref v; newValue) v = v.replace("#", ",");
    foreach(v; newValue) results ~= v.split(","); 
    super.value(results); }
  unittest {
    version(test_uim_entities) {
      // TODO
      }}

  override string toString() {
    if (_value.length > 0) return "#"~this.value.join(" #");
    return null; }
  unittest {
    version(test_uim_entities) {
      writeln(OOPAttributeTags(["a,b,c"]).value);
      writeln(OOPAttributeTags(["a,b,c"]).toString);
      assert(OOPAttributeTags(["a,b,c"]).toString == "#a #b #c");
      assert(OOPAttributeTags(["a,b, c"]).toString == "#a #b #c");
      assert(OOPAttributeTags(["a", "b", "c"]).toString == "#a #b #c");
      assert(OOPAttributeTags(["a", " b", "c"]).toString == "#a #b #c");
    }}
}
auto OOPAttributeTags() { return new DOOPAttributeTags; }
auto OOPAttributeTags(Json json) { return new DOOPAttributeTags(json); }
auto OOPAttributeTags(string aValue) { return new DOOPAttributeTags(aValue); }
auto OOPAttributeTags(string[] aValue) { return new DOOPAttributeTags(aValue); }

unittest {
  version(test_uim_entities) {
    // TODO tests
  }}
