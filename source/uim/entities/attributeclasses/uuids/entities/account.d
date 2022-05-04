module uim.entities.attributeclasses.uuids.entities.account;

@safe:
import uim.entities;

class DAccountIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("AccountIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("accountId")
      .registerPath("accountid");
  }  
}
mixin(AttributeClassCalls!("AccountIdAttributeClass"));

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DAccountIdAttributeClass);
    testAttributeClass(AccountIdAttributeClass);
  }
}