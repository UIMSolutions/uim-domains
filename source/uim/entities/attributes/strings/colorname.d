module uim.entities.attributes.strings.colorname;

@safe:
import uim.entities;

// means.measurement.color
class DOOPColorNameAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPColorNameAttribute", "colorname"));
}
mixin(OOPAttributeCalls!("OOPColorNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}