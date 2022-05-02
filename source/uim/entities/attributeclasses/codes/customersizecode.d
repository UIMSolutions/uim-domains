module uim.entities.attributeclasses.codes.customersizecode;

@safe:
import uim.entities;

class DCustomerSizeCodeAttributeClass : DIntegerStringAttributeClass {
  mixin(AttributeClassThis!("CustomerSizeCodeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("customerSizeCode")
      .display("Customer Size")
      .lookups([
        0: "0-100 (small)",  
        1: "100-1000 (middle)",
        2: "1000-10000 (large)"
      ])
      .isNullable(true)
      .registerPath("customersizecode");
  }
}
mixin(AttributeClassCalls!("CustomerSizeCodeAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}