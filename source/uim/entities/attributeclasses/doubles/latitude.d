module uim.entities.attributeclasses.doubles.latitude;

@safe:
import uim.entities;

// means.location.latitude
class DOOPLatitudeAttribute : DOOPAttributeDouble {
  mixin(OOPAttributeThis!("OOPLatitudeAttribute", "latitude"));
}
mixin(OOPAttributeCalls!("OOPLatitudeAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
