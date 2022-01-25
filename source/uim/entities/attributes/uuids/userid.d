module uim.entities.attributes.uuids.userid;

@safe:
import uim.entities;

class DOOPAttributeUserId : DOOPAttributeUUID {
  mixin(OOPAttributeThis!("OOPAttributeUserId"));

  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(UUID newValue) { this(); this.value(newValue); }
}
mixin(OOPAttributeCalls!("OOPAttributeUserId"));

auto OOPAttributeUserId(Json aValue) { return new DOOPAttributeUserId(aValue); }
auto OOPAttributeUserId(string aValue) { return new DOOPAttributeUserId(aValue); }
auto OOPAttributeUserId(UUID aValue) { return new DOOPAttributeUserId(aValue); }

unittest {
  version(test_uim_entities) {
    // TODO 
  }  
}