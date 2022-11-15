module uim.domains.attributes.lookups.integers.boolean;

@safe:
import uim.domains;

class DIntegerBooleanAttribute : DLookupAttribute {
  mixin(AttributeThis!("IntegerBooleanAttribute"));

  mixin(OProperty!("bool[int]", "lookups"));  
  O addLookup(this O)(int key, string value) {
    _lookups[key] = value;
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;
    // means.measurement.lookup

    this
      .name("lookup")
      .dataFormats(["lookup", "integer", "string"])
      .registerPath("lookup");
  }

  bool hasLookupKey(int key) {
    return (key in _lookups ? true : false); 
  }
  bool hasLookupValue(bool lookupValue) {
    foreach(k, v; _lookups) { if (v == lookupValue) return true; }
    return false; 
  }  

  override DValue createValue() {
    return IntegerBooleanValue(this).isNullable(isNullable); }  
}
mixin(AttributeCalls!("IntegerBooleanAttribute"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}