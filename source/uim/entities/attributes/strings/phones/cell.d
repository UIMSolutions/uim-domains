module uim.entities.attributes.strings.phones.cell;

/* any <- char <- string <- phoneCell
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.service.phone.cell */

@safe:
import uim.entities;

class DPhoneCellAttribute : DStringAttribute {
  mixin(AttributeThis!("PhoneCellAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("phonecell")
      .registerPath("phonecell");
  }
}
mixin(AttributeCalls!("PhoneCellAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}