module uim.entities.attributeclasses.strings.attributename;

// Type for trait parameters that take attribute names as values

@safe:
import uim.entities;

class DAttributeNameAttributeClass : DStringAttributeClass {
  mixin(AttributeClassThis!("AttributeNameAttributeClass"));

  /*
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.attributeName
  */

  override void initialize() {
    super.initialize;

    this
      .name("attributeName")
      .registerPath("attributename");
  }
}
mixin(AttributeClassCalls!("AttributeNameAttributeClass"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
