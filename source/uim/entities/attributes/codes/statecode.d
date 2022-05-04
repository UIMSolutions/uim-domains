module uim.entities.attributes.codes.statecode;

@safe:
import uim.entities;

class DStateCodeAttribute : DIntegerStringAttribute {
  mixin(AttributeThis!("StateCodeAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("stateCode")
      .display("Status Reason")
      .lookups([
        0: "Active",  
        1: "Inactive"
      ])
      .isNullable(true)
      .registerPath("statecode");
  }
}
mixin(AttributeCalls!("StateCodeAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}