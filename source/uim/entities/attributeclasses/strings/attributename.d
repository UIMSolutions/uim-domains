module uim.entities.attributeclasses.chars.strings.attributename;

// Type for trait parameters that take attribute names as values

@safe:
import uim.entities;

class DOOPAttributeNameAttributeClass : DOOPStringAttributeClass {
  mixin(AttributeClassThis!("OOPAttributeNameAttributeClass"));

  /*
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.attributeName
  */

  override void initialize() {
    super.initialize;

    this
      .name("attributename")
      .registerPath("attributename");
  }
}
mixin(AttributeClassCalls!("OOPAttributeNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
