module uim.entities.attributes.uuids.entities.users.createdonbehalfby;

@safe:
import uim.entities;

class DCreatedOnBehalfByAttribute : DEntityAttribute {
  mixin(AttributeThis!("CreatedOnBehalfByAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("createdOnBehalfBy")
      .registerPath("createdOnBehalfBy");
  }  
}
mixin(AttributeCalls!("CreatedOnBehalfByAttribute"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}