module uim.entities.attributes.lookup;

@safe:
import uim.entities;

class DOOPAttributeLookup : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }
  this(string aValue) { this(); this.fromString(aValue); }

  mixin(SProperty!("string[int]", "lookupValues"));
  mixin(SProperty!("int", "value"));
  
  string display() {
    return lookupValues.get(value, ""); }

  override Json toJson() {
    return Json(value);    
  }
  override void fromJson(Json newValue) {
    _value = newValue.get!int;    
  }
}
auto OOPAttributeLookup() { return new DOOPAttributeLookup(); }
auto OOPAttributeLookup(Json aValue) { return new DOOPAttributeLookup(aValue); }
auto OOPAttributeLookup(string aValue) { return new DOOPAttributeLookup(aValue); }

unittest {
  version(uim_entities) {
  }  
}