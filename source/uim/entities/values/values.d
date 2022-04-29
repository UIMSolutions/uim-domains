module uim.entities.values.values;

@safe:
import uim.entities;

class DValues {
  this() { initialize; }

  private DValue[string] _values; 

  void initialize() {}

  bool hasValue(string key) { return key in _values ? true : false; }
  string[] keys() { return _values.keys; }

  DValue opIndex(string name) { return _values.get(name, NullValue); }

  // Set value, if key exists
  void opIndexAssign(bool newValue, string key) {
    if (auto boolValue = cast(DBooleanValue)this[key]) {
      boolValue.value(newValue);
    }
  }

  void opIndexAssign(Json newValue, string key) {
    this[key].value(newValue);
  }

  void opIndexAssign(long newValue, string key) {
    if (auto longValue = cast(DLongValue)this[key]) {
      longValue.value(newValue);
    }
  }

  void opIndexAssign(string newValue, string key) {
    this[key].value(newValue);
  }

  void opIndexAssign(UUID newValue, string key) {
    if (auto uuidValue = cast(DUUIDValue)this[key]) {
      uuidValue.value(newValue);
    }
  }

  O addValues(this O)(DValue[string] newValues) {
    newValues.byKey.each!(key => addValue(key, newValues[key]));
    return cast(O)this;
  }

  O addValues(this O)(DAttributeClass[string] attributeClasses) {
    attributeClasses.byKey.each!(key => addValue(key, attributeClasses[key].createValue));
    return cast(O)this;
  }

  O addValue(this O)(string fieldName, DValue newValue) {
    _values[fieldName] = newValue;
    return cast(O)this;
  }

  Json toJson() {
    return toJson(Json.emptyObject);
  }

  Json toJson(Json obj) {
    keys.each!(key => obj[key] = _values[key].toJson);
    return obj;
  }
}
auto Values() { return new DValues; }