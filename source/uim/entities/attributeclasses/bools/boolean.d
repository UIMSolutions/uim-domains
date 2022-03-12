/***********************************************************************************************
*	Copyright: © 2017-2021 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
*	Documentation [DE]: https://ui-manufaktur.com/docu/uim-core/overview
************************************************************************************************/
module uim.entities.attributes.bools.boolean;

@safe:
import uim.entities;

class DOOPBooleanAttributeClass : DOOPAttributeClass {
  mixin(OOPAttributeThis!("OOPBooleanAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["boolean"]);
  }
}
mixin(AttributeClassCalls!"OOPBooleanAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPIntegerAttributeClass);
    testAttributeClass(OOPIntegerAttributeClass);
  }
}