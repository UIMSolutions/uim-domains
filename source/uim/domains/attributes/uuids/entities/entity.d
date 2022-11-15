module uim.domains.attributes.uuids.entities.entity;

@safe:
import uim.domains;

// A unique identifier for entity instances

class DEntityIdAttribute : DUUIDAttribute {
  mixin(AttributeThis!("EntityIdAttribute"));

/*   is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
is.dataFormat.guid
means.identity.entityId */



}
mixin(AttributeCalls!("EntityIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DEntityIdAttribute);
    testAttribute(EntityIdAttribute);
  }
}