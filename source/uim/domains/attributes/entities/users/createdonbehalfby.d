module uim.domains.attributes.entities.users.createdonbehalfby;

@safe:
import uim.domains;

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