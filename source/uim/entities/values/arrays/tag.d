module uim.entities.values.arrays.tag;

@safe:
import uim.entities;

class DTagsValue : DStringArrayValue {
  mixin(ValueThis!("TagsValue", "string[]"));  

  override void initialize() {
    super.initialize;
  }

  override string toString() {
    if (_value.length > 0) return "#"~this.value.join(" #");
    return null; 
  }
}
mixin(ValueCalls!("TagsValue", "string[]"));  

version(test_uim_entities) {
  unittest {
    auto attribute = TagsValue(["a", "b", "c"]);
    assert(attribute.value.length == 3);
    assert(attribute.value[0] == "a");
    assert(attribute.value[1] == "b");
}}