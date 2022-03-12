/***********************************************************************************************
*	Copyright: © 2017-2021 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
*	Documentation [DE]: https://ui-manufaktur.com/docu/uim-core/overview
************************************************************************************************/
module uim.entities.attributes.bools.boolean;

@safe:
import uim.entities;

class DOOPBooleanAttribute : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPBooleanAttribute"));
  this(bool newValue) { this().value(newValue); }

  override void initialize() {
    super.initialize;

    this
      .attributeClass(OOPBooleanAttributeClass);
  }

  protected bool _value;
  void value(bool newValue) {
    _value = newValue;
  }
  override DOOPAttribute value(Json newValue) {
    if (newValue == Json(null)) this.value(false);
    switch(newValue.type) {
      case Json.Type.bool_: 
        this.value(newValue.get!bool);
        break;
      default: break;
    }
    return this;
  }

  override DOOPAttribute value(string newValue) { 
    debug writeln("In DOOPBooleanAttribute newValue = ", newValue);
    _value = (newValue.toLower == "true") || (newValue.toLower == "on") || (newValue.toLower == "1"); 
    debug writeln("result ", _value);

    return this;
  }
  version(test_uim_entities) {
    unittest {
      auto booleanAttribute = OOPBooleanAttribute;

      booleanAttribute.value("true");
      assert(booleanAttribute.value);

      booleanAttribute.value("false");
      assert(!booleanAttribute.value);

      booleanAttribute.value("on");
      assert(booleanAttribute.value);

      booleanAttribute.value("off");
      assert(!booleanAttribute.value);

      booleanAttribute.value("1");
      assert(booleanAttribute.value);

      booleanAttribute.value("0");
      assert(!booleanAttribute.value);
  }}

  bool value() {
    return _value;
  }
  override string stringValue() {
    return _value ? "true" : "false";
  }
  override Json jsonValue() {
    return Json(_value);
  }

  override DOOPAttribute clone() { return OOPBooleanAttribute; }
}
mixin(OOPAttributeCalls!("OOPBooleanAttribute"));
auto OOPBooleanAttribute(bool newValue) { return new DOOPBooleanAttribute(newValue); }

unittest {
  version(test_uim_entities) {
  }
}