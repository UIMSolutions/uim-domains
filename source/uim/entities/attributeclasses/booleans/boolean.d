/***********************************************************************************************
*	Copyright: © 2017-2022 UI Manufaktur UG / 2022 Ozan Nuretin Süel (Sicherheitsschmiede)
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
************************************************************************************************/
module uim.entities.attributeclasses.booleans.boolean;

@safe:
import uim.entities;

class DOOPBooleanAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPBooleanAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("boolean")
      .dataFormats(["boolean"])
      .registerPath("boolean");
  }

  override DValue createValue() {
    return BooleanValue(this); }
}
mixin(AttributeClassCalls!"OOPBooleanAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPBooleanAttributeClass);
    testAttributeClass(OOPBooleanAttributeClass);
  }
}