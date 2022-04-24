module uim.entities.values.object_;

@safe:
import uim.entities;

class DObjectValue : DValue {
  mixin(ValueThis!("ObjectValue", "Json"));  

  mixin(OProperty!("Json", "value"));

  override void initialize() {
    super.initialize;

    _value = Json.emptyObject;
    this
      .isObject(true);
  }

  override Json toJson() {
    if (isNull) return Json(null);
    return _value; }
  override string toString() { 
    if (isNull) return null; 
    return _value.toString;
  }
}
mixin(ValueCalls!("ObjectValue", "Json"));  
