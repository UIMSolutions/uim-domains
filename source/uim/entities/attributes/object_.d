module uim.entities.attributes.object_;

@safe:
import uim.entities;

class DOOPAttributeObject : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("Json[string]", "value"));
  
  override Json toJson() {
    return Json(value);    
  }
  override void fromJson(Json newValue) {
    _value = newValue.get!(Json[string]);    
  }
}
auto OOPAttributeObject() { return new DOOPAttributeObject(); }
auto OOPAttributeObject(Json json) { return new DOOPAttributeObject(json); }

unittest {
  version(uim_entities) {
  }  
}