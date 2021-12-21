module uim.entities.attributes.uuids.userid;

@safe:
import uim.entities;

class DOOPAttributeUserId : DOOPAttributeUUID {
  this() { super(); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(UUID newValue) { this(); this.value(newValue); }
}
auto OOPAttributeUserId() { return new DOOPAttributeUserId(); }
auto OOPAttributeUserId(Json aValue) { return new DOOPAttributeUserId(aValue); }
auto OOPAttributeUserId(string aValue) { return new DOOPAttributeUserId(aValue); }
auto OOPAttributeUserId(UUID aValue) { return new DOOPAttributeUserId(aValue); }

unittest {
  version(uim_entities) {
    // TODO 
  }  
}