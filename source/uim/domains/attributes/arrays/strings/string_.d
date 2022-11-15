/***********************************************************************************************
*	Copyright: © 2017-2022 UI Manufaktur UG / 2022 Ozan Nuretin Süel (Sicherheitsschmiede)
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.domains.attributes.arrays.strings.string_;

@safe:
import uim.domains;

class DStringArrayAttribute : DAttribute {
  mixin(AttributeThis!("StringArrayAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("StringArrayAttribute")
      .dataFormats(["string", "array"])
      .registerPath("StringArrayAttribute");
  }

  override DValue createValue() {
    return StringArrayValue(this); }
}
mixin(AttributeCalls!"StringArrayAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DStringArrayAttribute);
    testAttribute(StringArrayAttribute);
  }
}