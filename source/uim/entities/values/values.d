module uim.entities.values.values;

@safe:
import uim.entities;

class DValues {
  this() { initialize; }

  private DValue[string] _values; 

  void initialize() {}

  DValue opIndex(string name) { return _values.get(name, NullValue); }
}
auto Values() { return new DValues; }