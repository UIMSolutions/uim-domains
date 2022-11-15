module uim.domains.attributes.uuids.entities.account;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DAccountIdAttribute);
    testAttribute(AccountIdAttribute);
  }
}