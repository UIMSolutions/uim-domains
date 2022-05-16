module uim.entities.attributes.uuids.entities.account;

@safe:
import uim.entities;

class DAccountAttribute : DEntityAttribute {
  mixin(AttributeThis!("AccountAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("account")
      .registerPath("account");
  }  
}
mixin(AttributeCalls!("AccountAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DAccountAttribute);
    testAttribute(AccountAttribute);
  }
}