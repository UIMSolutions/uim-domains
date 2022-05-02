module uim.entities.attributeclasses.uuids.entityids.userid;

/* The identifier of a system user

Inheritance
any <- char <- string <- guid <- entityId <- userId
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
is.dataFormat.guid
means.identity.entityId
means.userId */

@safe:
import uim.entities;

class DUserIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("UserIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("userId")
      .registerPath("userid");
  }  
}
mixin(AttributeClassCalls!("UserIdAttributeClass"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}