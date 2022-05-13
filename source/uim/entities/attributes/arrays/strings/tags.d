/***********************************************************************************************
*	Copyright: © 2017-2022 UI Manufaktur UG / 2022 Ozan Nuretin Süel (Sicherheitsschmiede)
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.entities.attributes.arrays.strings.tags;

@safe:
import uim.entities;

class DTagsAttribute : DStringArrayAttribute {
  mixin(AttributeThis!("TagsAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("TagsAttribute")
      .dataFormats(["string", "array"])
      .registerPath("TagsAttribute");
  }

  override DValue createValue() {
    return TagArrayValue(this); }
}
mixin(AttributeCalls!"TagsAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DTagsAttribute);
    testAttribute(TagsAttribute);
  }
}