module uim.entities.attributes.uuids.entities.users.modifiedonbehalfby;

@safe:
import uim.entities;

class DModifiedOnBehalfByAttribute : DEntityAttribute {
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