module uim.entities.values.entity;

@safe:
import uim.entities;

class DEntityValue : DValue {
  mixin(ValueThis!("EntityValue", "DOOPEntity"));  

  override void initialize() {
    super.initialize;

    this
      .isNull(false)
      .isEntity(true);
  }

  protected DOOPEntity _value;
  alias value = DValue.value;
  O value(this O)(DOOPEntity newValue) {
    _value = newValue;
    return cast(O)this; 
  }
  DOOPEntity value() {
    return _value; 
  }
  version(test_uim_eDOOPEntityntities) {
    unittest {    
      auto entity = SystemUser; // some kind of entity
      assert(EntityValue.value(entity).value.id == entity.id);
  }}

  protected void set(DOOPEntity newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); 
      _value = null; }
    else {
      this.isNull(false);
      _value = newValue; 
    }
  }  

  override protected void set(string newValue) {
    /// TODO
  }  

  override protected void set(Json newValue) {
    /// TODO
  }

/*   bool opEquals(DOOPEntity otherValue) {
    return (this.value.id == otherValue.id);
  }

  int opCmp(DOOPEntity otherValue) {
    /// TODO
    return 1;
  } */

  override Json toJson() { 
    if (isNull) return Json(null); 
    return this.value.toJson; 
  }

  // EntityValue converts to a JsonSTtring
  override string toString() { 
    if (isNull) return null; 
    return toJson.toString; 
  }

  override void fromString(string newValue) { 
    /// TODO this.value(newValue);
  }
}
mixin(ValueCalls!("EntityValue", "DOOPEntity"));  

version(test_uim_entities) {
  unittest {  
}}
