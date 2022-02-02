module uim.entities.attributes.uuids.userid;

@safe:
import uim.entities;

class DOOPAttributeUserId : DOOPUUIDAttribute {
  mixin(OOPAttributeThis!("OOPAttributeUserId"));

  this(UUID newValue) { this(); this.value(newValue); }
}
mixin(OOPAttributeCalls!("OOPAttributeUserId"));

auto OOPAttributeUserId(UUID aValue) { return new DOOPAttributeUserId(aValue); }

unittest {
  version(test_uim_entities) {
    // TODO 
  }  
}