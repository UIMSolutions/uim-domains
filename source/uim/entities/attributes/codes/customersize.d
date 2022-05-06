module uim.entities.attributes.codes.customersize;

@safe:
import uim.entities;

class DCustomerSizeCodeAttribute : DIntegerStringAttribute {
  mixin(AttributeThis!("CustomerSizeCodeAttribute"));

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
mixin(AttributeCalls!("CustomerSizeCodeAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}