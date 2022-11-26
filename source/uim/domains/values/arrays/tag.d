/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.arrays.tag;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    auto attribute = TagArrayValue(["a", "b", "c"]);
    assert(attribute.value.length == 3);
    assert(attribute.value[0] == "a");
    assert(attribute.value[1] == "b");
}}