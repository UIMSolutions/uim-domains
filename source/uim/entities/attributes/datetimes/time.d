module uim.entities.attributes.datetimes.time;

@safe:
import uim.entities;

class DOOPAttributeTime : DOOPAttributeDatetime {
  this() { super(); }
  this(Json json) { this(); this.value(json); }
}
auto OOPAttributeTime() { return new DOOPAttributeTime(); }
auto OOPAttributeTime(Json json) { return new DOOPAttributeTime(json); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}