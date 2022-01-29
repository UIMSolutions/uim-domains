module uim.entities.attributes.objects.attribute;

@safe:
import uim.entities;
// Types for trait parameters that take objects as values

class DOOPAttributeObject : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeObject"));

  /*

  */
}
mixin(OOPAttributeCalls!("OOPAttributeObject"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}