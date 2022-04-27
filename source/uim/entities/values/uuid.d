module uim.entities.values.uuid;

@safe:
import uim.entities;

class DUUIDValue : DValue {
  mixin(ValueThis!("UUIDValue", "UUID"));  

  override void initialize() {
    super.initialize;

    this
      .isNull(false)
      .isUUID(true);
  }

  mixin(OProperty!("UUID", "value"));
  O value(this O)(string newValue) {
    if (newValue is null) {
      if (this.isNullable) {
        this
          .isNull(true);
      }
      this
        .value(UUID());
    }
    else {
      if (newValue.isUUID) {
        this
          .isNull(false)
          .value(UUID(newValue));
      }
    }
    return cast(O)this; 
  }
  version(test_uim_entities) {
    unittest {    
      auto uuid = randomUUID;
      assert(UUIDValue(uuid).value == uuid);
  }}

  UUID opCall() { return _value; } 
  O opCall(this O)(UUID newValue) { 
    this.value(newValue);
    return cast(O)this; }
  O opCall(this O)(Json newValue) { 
    if (newValue.type = Json.Type.string) _value = newValue.get!string;
    return cast(O)this; }

  bool opEquals(UUID otherValue) {
    return (_value == otherValue);
  }

  int opCmp(UUID otherValue) {
    if (this.value < otherValue) return -1;
    if (this.value == otherValue) return 0;
    return 1;
  }

  version(test_uim_entities) {
    unittest {    
      assert(UUIDValue(true) == true);
  }}

  override Json toJson() { 
    if (isNull) return Json(null); 
    return Json(this.value.toString); 
  }

  override string toString() { 
    if (isNull) return UUID().toString; 
    return this.value.toString; 
  }

  override void fromString(string newValue) { 
    this.value(newValue);
  }
}
mixin(ValueCalls!("UUIDValue", "UUID"));  

version(test_uim_entities) {
  unittest {  
}}
