module uim.entities.values.object_;

@safe:
import uim.entities;

class DObjectValue : DValue {
  mixin(ValueThis!("ObjectValue", "Json"));  

  mixin(OProperty!("Json", "value"));

  O value(this O)(string newValue) {
    this.value(parseJsonString(newValue));
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;

    _value = Json.emptyObject;
    this
      .isObject(true);
  }

  override Json toJson() {
    if (isNull) return Json(null);
    return _value; }

  override Json toJsonValue() { return this.value; }
  override string toString() { 
    if (isNull) return null; 
    return _value.toString;
  }

  override void fromString(string newValue) { 
    this.value(newValue);
  }
}
mixin(ValueCalls!("ObjectValue", "Json"));  
