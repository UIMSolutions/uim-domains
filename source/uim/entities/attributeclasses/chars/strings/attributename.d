module uim.entities.attributeclasses.chars.strings.attributename;

// Type for trait parameters that take attribute names as values

@safe:
import uim.entities;

class DOOPAttributeAttributeName : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPAttributeAttributeName"));

  /*

is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.attributeName

  */
}
mixin(AttributeClassCalls!("OOPAttributeAttributeName"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
