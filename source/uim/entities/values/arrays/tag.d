module uim.entities.values.arrays.tag;

@safe:
import uim.entities;

class DTagArrayValue : DStringArrayValue {
  mixin(ValueThis!("TagArrayValue", "string[]"));  

  override void initialize() {
    super.initialize;
  }

  override string toString() {
    if (_value.length > 0) return "#"~this.value.join(" #");
    return null; 
  }
}
mixin(ValueCalls!("TagArrayValue", "string[]"));  

version(test_uim_entities) {
  unittest {
    auto attribute = TagArrayValue(["a", "b", "c"]);
    assert(attribute.value.length == 3);
    assert(attribute.value[0] == "a");
    assert(attribute.value[1] == "b");
}}