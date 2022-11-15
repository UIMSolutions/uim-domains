module uim.domains.attributes.uuids.entities.users.user;

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
import uim.domains;

class DUserIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("UserIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("userId")
      .registerPath("userid");
  }  
}
mixin(AttributeCalls!("UserIdAttribute"));

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}