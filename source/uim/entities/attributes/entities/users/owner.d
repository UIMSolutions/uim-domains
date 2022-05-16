module uim.entities.attributes.uuids.entities.users.owner;

@safe:
import uim.entities;

class DOwnerAttribute : DEntityAttribute {
  mixin(AttributeThis!("OwnerAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("owner")
      .registerPath("owner");
  }  
}
mixin(AttributeCalls!("OwnerAttribute"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}