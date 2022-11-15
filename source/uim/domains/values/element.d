module uim.domains.values.element;

@safe:
import uim.domains;

class Value : DValue {
  mixin(ValueThis!("ElementValue", "DElement"));  

  override void initialize() {
    super.initialize;

    this
      .isNull(false);
  }

  protected DElement _value;
  alias value = DValue.value;
  O value(this O)(DElement newValue) {
    _value = newValue;
    return cast(O)this; 
  }
  DElement value() {
    return _value; 
  }
  version(test_uim_eDElementntities) {
    unittest {    
      auto Element = SystemUser; // some kind of Element
      assert(ElementValue.value(Element).value.id == Element.id);
  }}

  protected void set(DElement newValue) {
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

/*   bool opEquals(DElement otherValue) {
    return (this.value.id == otherValue.id);
  }

  int opCmp(DElement otherValue) {
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
mixin(ValueCalls!("ElementValue", "DElement"));  

version(test_uim_entities) {
  unittest {  
    assert(ElementValue);

}}
