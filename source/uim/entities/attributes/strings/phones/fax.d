module uim.entities.attributes.strings.phones.fax;

/* any <- char <- string <- phoneFax
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.identity.service.phone.fax */

class DFaxAttribute : DStringAttribute {
  mixin(AttributeThis!("FaxAttribute"));

  override void initialize() {
    super.initialize;

    this
      .fax("fax")
      .registerPath("fax");
  }
}
mixin(AttributeCalls!("FaxAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}