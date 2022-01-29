module uim.entities.attributes.strings.attributename;

// Type for trait parameters that take attribute names as values

@safe:
import uim.entities;

class DOOPAttributeAttributeName : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPAttributeAttributeName"));

  /*

is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.attributeName

  */
}
mixin(OOPAttributeCalls!("OOPAttributeAttributeName"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
