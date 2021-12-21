module uim.entities.attributes.integers.timestamp;

@safe:
import uim.entities;

class DOOPAttributeTimestamp : DOOPAttributeInteger {
  this() { super(); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(long newValue) { this(); this.value(newValue); }
}
auto OOPAttributeTimestamp() { return new DOOPAttributeTimestamp(); }
auto OOPAttributeTimestamp(Json newValue) { return new DOOPAttributeTimestamp(newValue); }
auto OOPAttributeTimestamp(string newValue) { return new DOOPAttributeTimestamp(newValue); }
auto OOPAttributeTimestamp(long newValue) { return new DOOPAttributeTimestamp(newValue); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}