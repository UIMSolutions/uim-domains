module uim.domains.attributes.entities.account;

@safe:
import uim.domains;

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

version(test_uim_domains) {
  unittest {
    testAttribute(new DAccountAttribute);
    testAttribute(AccountAttribute);
  }
}