module uim.entities.attributeclasses.lookups.lookup;

@safe:
import uim.entities;

class DLookupAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("LookupAttributeClass"));

  override void initialize() {
    super.initialize;
    // means.measurement.lookup

    this
      .name("lookup")
      .dataFormats(["lookup"])
      .registerPath("lookup");
  }

/*   override DValue createValue() {
    return LookupValue(this); } */
}
mixin(AttributeClassCalls!("LookupAttributeClass"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}