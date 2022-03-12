module uim.entities.attributeclasses.percentage;

@safe:
import uim.entities;

class DOOPAttributePercentage : DOOPAttributeDouble {
  mixin(OOPAttributeThis!("OOPAttributePercentage"));
}
mixin(OOPAttributeCalls!("OOPAttributePercentage"));

unittest {
  version(test_uim_entities) {  
    // TODO tests
  }
}