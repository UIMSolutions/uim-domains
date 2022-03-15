module uim.entities.attributeclasses.uuids.userid;

@safe:
import uim.entities;

class DOOPUserIdAttributeClass : DOOPUUIDAttributeClass {
  mixin(AttributeClassThis!("OOPUserIdAttributeClass"));
}
mixin(AttributeClassCalls!("OOPUserIdAttributeClass"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}