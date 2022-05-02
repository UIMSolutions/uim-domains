module uim.entities.attributeclasses.codes.statuscode;

@safe:
import uim.entities;

class DStatusCodeAttributeClass : DIntegerStringAttributeClass {
  mixin(AttributeClassThis!("StatusCodeAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("statusCode")
      .display("Status Reason")
      .lookups([
        0: "Active",  
        1: "Inactive"
      ])
      .isNullable(true)
      .registerPath("statuscode");
  }
}
mixin(AttributeClassCalls!("StatusCodeAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}