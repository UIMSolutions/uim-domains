module uim.domains.attributes.uuids.entities.users.modifiedonbehalfby;

@safe:
import uim.domains;

class DModifiedOnBehalfByAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("ModifiedOnBehalfByAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("modifiedOnBehalfBy")
      .registerPath("modifiedOnBehalfBy");
  }  
}
mixin(AttributeCalls!("ModifiedOnBehalfByAttribute"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}