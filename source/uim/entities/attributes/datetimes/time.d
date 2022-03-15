module uim.entities.attributes.datetimes.time;

@safe:
import uim.entities;

class DOOPAttributeTime : DOOPAttributeDatetime {
  mixin(OOPAttributeThis!("OOPAttributeTime"));
}
mixin(OOPAttributeCalls!("OOPAttributeTime"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}