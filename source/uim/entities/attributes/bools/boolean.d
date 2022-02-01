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

  protected bool _value;
  void value(bool newValue) {
    _value = newValue;
  }
  override void value(Json newValue) {
    if (newValue == Json(null)) this.value(false);
    switch(newValue.type) {
      case Json.Type.bool_: 
        this.value(newValue.get!bool);
        break;
      default: break;
    }
  }

  override void value(string newValue) { 
    debug writeln("In DOOPBooleanAttribute newValue = ", newValue);
    _value = (newValue.toLower == "true") || (newValue.toLower == "on"); 
    debug writeln("result ", _value);
  }

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