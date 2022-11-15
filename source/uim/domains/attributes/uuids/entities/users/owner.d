module uim.domains.attributes.uuids.entities.users.owner;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}