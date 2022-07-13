module uim.entities.values.values;

@safe:
import uim.entities;

class DValues {
  this() { initialize; }

  void initialize() {}

  mixin(OProperty!("DValue[string]", "items"));

  string[] names() { return items.keys; }

  bool hasValue(string key) { return key in _items ? true : false; }
  string[] keys() { return _items.keys; }

  DValue opIndex(string name) { return _items.get(name, NullValue); }

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

  O addValues(this O)(DAttribute[string] attributes) {
    attributes.byKey.each!(key => addValue(key, attributes[key].createValue));
    return cast(O)this;
  }

  O addValue(this O)(string fieldName, DValue newValue) {
    _items[fieldName] = newValue;
    return cast(O)this;
  }

  Json toJson() {
    return toJson(Json.emptyObject);
  }

  Json toJson(Json obj) {
    keys.each!(key => obj[key] = _items[key].toJson);
    return obj;
  }
}
auto Values() { return new DValues; }