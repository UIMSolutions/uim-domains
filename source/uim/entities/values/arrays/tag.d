module uim.entities.values.arrays.tag;

@safe:
import uim.entities;

class DTagArrayValue : DStringArrayValue {
  mixin(ValueThis!("TagArrayValue", "string[]"));  

  override void initialize() {
    super.initialize;
  }

  override void set(string newValue) {
    debug writeln("In DTagArrayValue - ", newValue);
    this.value(newValue.split("#").map!(a => a.strip).array);
    debug writeln("After split - ", this.value);
  }

  size_t length() {
    return _values.length;
  }

  override string toString() {
    if (length > 0) return "#"~this.value.join(" #");
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