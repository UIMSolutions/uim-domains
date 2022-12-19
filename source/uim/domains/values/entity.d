module uim.domains.values.entity;

@safe:
import uim.domains;

class DEntityValue : DValue {
  mixin(ValueThis!("EntityValue", "DEntity"));  

  override void initialize() {
    super.initialize;

    this
      .isNull(false)
      .isEntity(true);
  }

  protected DEntity _value;
  alias value = DValue.value;
  O value(this O)(DEntity newValue) {
    _value = newValue;
    return cast(O)this; 
  }
  DEntity value() {
    return _value; 
  }
  version(test_uim_eDEntityntities) {
    unittest {    
      auto entity = SystemUser; // some kind of entity
      assert(EntityValue.value(entity).value.id == entity.id);
  }}

  protected void set(DEntity newValue) {
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

/*   bool opEquals(DEntity otherValue) {
    return (this.value.id == otherValue.id);
  }

  int opCmp(DEntity otherValue) {
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
mixin(ValueCalls!("EntityValue", "DEntity"));  

version(test_uim_domains) {
  unittest {  
}}
