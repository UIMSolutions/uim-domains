module uim.entities.attributes.uuids.entities.account;

@safe:
import uim.entities;

class DAccountIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("AccountIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("accountId")
      .registerPath("accountid");
  }  
}
mixin(AttributeCalls!("AccountIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DAccountIdAttribute);
    testAttribute(AccountIdAttribute);
  }
}