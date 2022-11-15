module uim.domains.attributes.strings.attributename;

// Type for trait parameters that take attribute names as values

@safe:
import uim.domains;

class DAttributeNameAttribute : DStringAttribute {
  mixin(AttributeThis!("AttributeNameAttribute"));

  /*
attributeName
Description

Type for trait parameters that take attribute names as values

Inheritance
any <- char <- string <- attributeName
Traits
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
mixin(AttributeCalls!("AttributeNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
