module uim.entities.attributeclasses.uuids.entityids.entityid;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DEntityIdAttributeClass : DUUIDAttributeClass {
  mixin(AttributeClassThis!("EntityIdAttributeClass"));
}
mixin(AttributeClassCalls!("EntityIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DEntityIdAttributeClass);
    testAttributeClass(EntityIdAttributeClass);
  }
}