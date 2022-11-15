module uim.domains.attributes.entities.users.owner;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}