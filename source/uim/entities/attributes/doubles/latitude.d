module uim.entities.attributes.doubles.latitude;

@safe:
import uim.entities;

// means.location.latitude
class DOOPLatitudeAttribute : DOOPDoubleAttribute {
  mixin(OOPAttributeThis!("OOPLatitudeAttribute", "latitude"));
}
mixin(OOPAttributeCalls!("OOPLatitudeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
