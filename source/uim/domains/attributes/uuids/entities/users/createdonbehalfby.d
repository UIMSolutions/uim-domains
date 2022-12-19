module uim.domains.attributes.uuids.entities.users.createdonbehalfby;

@safe:
import uim.domains;

class DCreatedOnBehalfByAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("CreatedOnBehalfByAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("createdOnBehalfBy")
      .registerPath("createdOnBehalfBy");
  }  
}
mixin(AttributeCalls!("CreatedOnBehalfByAttribute"));

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}