module uim.entities.attributes.userid;

@safe:
import uim.entities;

class DOOPAttributeUserId : DOOPAttributeUUID {
  this() { super(); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }
  this(UUID aValue) { this(); this.value(aValue); }
}
auto OOPAttributeUserId() { return new DOOPAttributeUserId(); }
auto OOPAttributeUserId(Json aValue) { return new DOOPAttributeUserId(aValue); }
auto OOPAttributeUserId(string aValue) { return new DOOPAttributeUserId(aValue); }
auto OOPAttributeUserId(UUID aValue) { return new DOOPAttributeUserId(aValue); }

unittest {
  version(uim_entities) {
  }  
}