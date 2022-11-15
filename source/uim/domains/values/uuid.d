module uim.domains.values.uuid;

@safe:
import uim.domains;

class DUUIDValue : DValue {
  mixin(ValueThis!("UUIDValue", "UUID"));  

  override void initialize() {
    super.initialize;

    this
      .isUUID(true);
  }

  protected UUID _value;  
  alias value = DValue.value;
  UUID value() {
    return _value; 
  }
  O value(this O)(UUID newValue) {
    this.set(newValue);
    return cast(O)this; 
  }

  void set(UUID newValue) {
    _value = newValue;
  }
  override void set(string newValue) {
    if (newValue is null) {
      this
        .isNull(this.isNullable)
        .value(UUID());
    }
    else {
      if (newValue.isUUID) {
        this
          .isNull(false)
          .value(UUID(newValue));
      }
    }
  }

  override void set(Json newValue) {
    if (newValue is Json(null)) {
      if (this.isNullable) {
        this
          .isNull(true);
      }
      this
        .value(UUID());
    }
    else {
      if (newValue.get!string.isUUID) {
        this
          .isNull(false)
          .value(UUID(newValue.get!string));
      }
    }
  }

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

version(test_uim_domains) {
  unittest {  
    auto uuid = randomUUID;
    assert(UUIDValue(uuid).value == uuid);
    assert(UUIDValue(randomUUID).value != uuid);

    assert(UUIDValue.value(uuid).value == uuid);
    assert(UUIDValue.value(randomUUID).value != uuid);

    assert(UUIDValue.value(uuid.toString).value == uuid);
    assert(UUIDValue.value(randomUUID.toString).value != uuid);

    assert(UUIDValue.value(Json(uuid.toString)).value == uuid);
    assert(UUIDValue.value(Json(randomUUID.toString)).value != uuid);

    assert(UUIDValue(uuid).toString == uuid.toString);
    assert(UUIDValue(randomUUID).toString != uuid.toString);

    assert(UUIDValue(uuid).toJson == Json(uuid.toString));
    assert(UUIDValue(randomUUID).toJson != Json(uuid.toString));
}}
