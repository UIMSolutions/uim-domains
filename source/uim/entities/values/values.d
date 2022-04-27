module uim.entities.values.values;

@safe:
import uim.entities;

class DValues {
  this() { initialize; }

  private DValue[string] _values; 

  void initialize() {}

  bool hasValue(string key) { return key in _values ? true : false; }

  DValue opIndex(string name) { return _values.get(name, NullValue); }

  void opIndexAssign(DValue newValue, string name) { 
    _values[name] = newValue; }

  void addValues(DValue[string] newValues) {
    newValues.byKey.each!(key => _values[key] = newValues[key]);
  }

  void addValues(DAttributeClass[string] newValues) {
    newValues.byKey.each!(key => _values[key] = newValues[key].value);
  }

  Json toJson() {
    return toJson(Json.emptyObject);
  }

  Json toJson(Json obj) {
    _values.byKey.each!(key => obj[key] = _values[key].toJsonValue);
    return obj;
  }
}
auto Values() { return new DValues; }