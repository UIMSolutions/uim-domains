module uim.domains.values.element;

@safe:
import uim.domains;

class DElementValue : DValue {
  mixin(ValueThis!("ElementValue", "DOOPElement"));  

  override void initialize() {
    super.initialize;

    this
      .isNull(false);
  }

  protected DOOPElement _value;
  alias value = DValue.value;
  O value(this O)(DOOPElement newValue) {
    _value = newValue;
    return cast(O)this; 
  }
  DOOPElement value() {
    return _value; 
  }
  version(test_uim_eDOOPElementntities) {
    unittest {    
      auto Element = SystemUser; // some kind of Element
      assert(ElementValue.value(Element).value.id == Element.id);
  }}

  protected void set(DOOPElement newValue) {
    if (newValue is null) { 
      this.isNull(isNullable ? true : false); 
      _value = null; }
    else {
      this.isNull(false);
      _value = newValue; 
    }
  }  

  override protected void set(string newValue) {
    /// TODO
  }  

  override protected void set(Json newValue) {
    /// TODO
  }

/*   bool opEquals(DOOPElement otherValue) {
    return (this.value.id == otherValue.id);
  }

  int opCmp(DOOPElement otherValue) {
    /// TODO
    return 1;
  } */

  override Json toJson() { 
    if (isNull) return Json(null); 
    return this.value.toJson; 
  }

  // ElementValue converts to a JsonSTtring
  override string toString() { 
    if (isNull) return null; 
    return toJson.toString; 
  }

  override void fromString(string newValue) { 
    /// TODO this.value(newValue);
  }
}
mixin(ValueCalls!("ElementValue", "DOOPElement"));  

version(test_uim_entities) {
  unittest {  
    assert(ElementValue);

}}
