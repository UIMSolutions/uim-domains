module uim.entities.attributes.uuids.entities.users.owner;

@safe:
import uim.entities;

class DOwnerIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("OwnerIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("ownerId")
      .registerPath("ownerid");
  }  
}
mixin(AttributeCalls!("OwnerIdAttribute"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}