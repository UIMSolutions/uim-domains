module uim.entities.attributeclasses.codes.statecode;

@safe:
import uim.entities;

class DStateCodeAttributeClass : DIntegerStringAttributeClass {
  mixin(AttributeClassThis!("StateCodeAttributeClass"));

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
mixin(AttributeClassCalls!("StateCodeAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}