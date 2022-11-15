module uim.domains.attributes.entities.users.user;

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

class DUserAttribute : DEntityAttribute {
  mixin(AttributeThis!("UserAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("user")
      .registerPath("user");
  }  
}
mixin(AttributeCalls!("UserAttribute"));

version(test_uim_domains) {
  unittest {
  
    // TODO 
  }  
}