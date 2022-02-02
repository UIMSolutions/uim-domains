module uim.entities.attributes.tags;

@safe:
import uim.entities;

class DOOPTagsAttribute : DOOPStringArrayAttribute {
  mixin(OOPAttributeThis!("OOPTagsAttribute"));
  this(string[] myValues) { this().value(myValues); }

  alias value = DOOPStringArrayAttribute.value;
  version(test_uim_entities) {
    unittest {
      // TODO
      }}
  override DOOPAttribute value(string[] newValue) {
    string[] results;
    foreach(ref v; newValue) v = v.replace("#", ",");
    foreach(v; newValue) results ~= v.split(","); 
    super.value(results); 

    return this;
    }
  version(test_uim_entities) {
    unittest {
      // TODO
      }}

  override string toString() {
    if (_value.length > 0) return "#"~this.value.join(" #");
    return null; }
  version(test_uim_entities) {
    unittest {

      assert(OOPTagsAttribute(["a,b,c"]).toString == "#a #b #c");
      assert(OOPTagsAttribute(["a,b, c"]).toString == "#a #b #c");
      assert(OOPTagsAttribute(["a", "b", "c"]).toString == "#a #b #c");
      assert(OOPTagsAttribute(["a", " b", "c"]).toString == "#a #b #c");
    }}
}
mixin(OOPAttributeCalls!("OOPTagsAttribute"));
auto OOPTagsAttribute(string[] myValues) { return new DOOPTagsAttribute(myValues); }


unittest {
  version(test_uim_entities) {
    // TODO tests
  }}
