/***********************************************************************************************
*	Copyright: © 2017-2021 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
*	Documentation [DE]: https://ui-manufaktur.com/docu/uim-core/overview
************************************************************************************************/
module uim.entities.attributeclasses.dates.date;

@safe:
import uim.entities;

// Attribute class for managing Date values
class DOOPDateAttributeClass : DAttributeClass {
  mixin(AttributeClassThis!("OOPDateAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["date"])
      .name("date")
      .registerPath("date");
    // means.measurement.date
  }
}
mixin(AttributeClassCalls!"OOPDateAttributeClass");

version(test_uim_entities) {
  unittest {
    testAttributeClass(new DOOPDateAttributeClass);
    testAttributeClass(OOPDateAttributeClass);
  }
}