module uim.entities.attributes.boolean;

@safe:
import uim.entities;

class DOOPAttributeBoolean : DOOPAttribute {
  this() { super(); }
  this(Json aValue) { this(); this.value(aValue); }
  this(string aValue) { this(); this.value(aValue); }

  mixin(SProperty!("bool", "value"));
  O value(this O)(string newValue) {
    debug writeln(moduleName!DOOPAttributeBoolean~":DOOPAttributeBoolean::value -> ", value);
    _value = (newValue == "true");
    return cast(O)this; }
  O value(this O)(Json value) {
    debug writeln(moduleName!DOOPAttributeBoolean~":DOOPAttributeBoolean::value -> ", value);
    _value = value.get!bool;
    return cast(O)this; }
  unittest {
    version(uim_entities) {
      // TODO Add Tests
    }}
  
  override Json toJson() { return Json(value); }   
  unittest {
    version(uim_entities) {
      // TODO Add Tests
    }}

  override void fromJson(Json newValue) { 
    debug writeln(moduleName!DOOPAttributeBoolean~":DOOPAttributeBoolean::fromJson");
    this.value(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add Tests
    }}

  override string toString() { 
    debug writeln(moduleName!DOOPAttributeBoolean~":DOOPAttributeBoolean::toString");
    return value ? "true" : "false"; }
  unittest {
    version(uim_entities) {
      // TODO Add Tests
    }}

  override void fromString(string newValue) { 
    debug writeln(moduleName!DOOPAttributeBoolean~":DOOPAttributeBoolean::fromString");
    this.value(newValue); }
  unittest {
    version(uim_entities) {
      // TODO Add Tests
    }}
}
auto OOPAttributeBoolean() { return new DOOPAttributeBoolean(); }
auto OOPAttributeBoolean(Json json) { return new DOOPAttributeBoolean(json); }

unittest {
  version(uim_entities) {
  }
}