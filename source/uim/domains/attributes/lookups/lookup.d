module uim.domains.attributes.lookups.lookup;

@safe:
import uim.domains;

class DLookupAttribute : DAttribute {
  mixin(AttributeThis!("LookupAttribute"));

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
mixin(AttributeCalls!("LookupAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}