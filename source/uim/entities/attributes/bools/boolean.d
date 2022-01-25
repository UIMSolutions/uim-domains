/***********************************************************************************************
*	Copyright: © 2017-2021 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
*	Documentation [DE]: https://ui-manufaktur.com/docu/uim-core/overview
************************************************************************************************/
module uim.entities.attributes.bools.boolean;

@safe:
import uim.entities;

class DOOPAttributeBoolean : DOOPAttribute {
  this() { super(); }
  this(DOOPAttributeBoolean attribute) { 
    super(attribute);
    this.value(attribute.value); }
  this(Json newValue) { this().value(newValue); }
  this(string newValue) { this().value(newValue); }
  this(bool newValue) { this().value(newValue); }

  override void initialize() {}

  // #region value
    protected bool _value;
    bool value() { return _value; }

    override void value(string newValue) {
      value(newValue == "true"); }
    
    override void value(Json newValue) {
      this.value(newValue.get!bool); }
    unittest {
      version(test_uim_entities) {
        // TODO Add Tests
      }}

    void value(bool newValue) { _value = newValue; }
  // #endregion value

  override DOOPAttribute copy() { return new DOOPAttributeBoolean(this.value); }

  // #region convert 
    // #region to json 
      override Json toJson() { return Json(value); }   
      unittest {
        version(test_uim_entities) {
          // TODO Add Tests
        }}
    // #endregion to json 


    override string toString() { 
      debug writeln(moduleName!DOOPAttributeBoolean~":DOOPAttributeBoolean::toString");
      return value ? "true" : "false"; }
    unittest {
      version(test_uim_entities) {
        // TODO Add Tests
      }}
  // #endregion convert 
}
auto OOPAttributeBoolean() { return new DOOPAttributeBoolean(); }
auto OOPAttributeBoolean(Json newValue) { return new DOOPAttributeBoolean(newValue); }
auto OOPAttributeBoolean(string newValue) { return new DOOPAttributeBoolean(newValue); }
auto OOPAttributeBoolean(bool newValue) { return new DOOPAttributeBoolean(newValue); }

unittest {
  version(test_uim_entities) {
  }
}