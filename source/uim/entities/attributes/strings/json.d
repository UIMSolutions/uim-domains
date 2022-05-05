module uim.entities.attributes.strings.json;

/* A JSON fragment contained within one string value

Inheritance
any <- char <- string <- json
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.content.text.JSON
 */
 
@safe:
import uim.entities;

class DJsonAttribute : DStringAttribute {
  mixin(AttributeThis!("JsonAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("json")
      .registerPath("json");
  }
}
mixin(AttributeCalls!("JsonAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}