module uim.entities.attributes.double_;

@safe:
import uim.entities;

class DOOPAttributeDouble : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("double", "value"));
  
  override Json toJson() {
    return Json(value);    
  }
  override void fromJson(Json newValue) {
    _value = newValue.get!double;    
  }
}
auto OOPAttributeDouble() { return new DOOPAttributeDouble(); }
auto OOPAttributeDouble(Json json) { return new DOOPAttributeDouble(json); }

unittest {
  version(uim_entities) {
  }  
}