module uim.entities.attributes.lookup;

@safe:
import uim.entities;

class DOOPAttributeLookup : DOOPAttributeInteger {
  mixin(OOPAttributeThis!("OOPAttributeLookup"));

  this(DOOPAttributeLookup attribute) { super(attribute); }

  // #region lookupValues
      protected string[long] _lookupValues;
      string[long] lookupValues() { return _lookupValues; }

      void lookupValues(string[long] newLookupValues) {
        _lookupValues = newLookupValues; }

      O lookupValue(this O)(long key, string display) {
        _lookupValues[key] = display;
        return cast(O)this; }
      
      bool hasCode(long code) {
        return code in _lookupValues ? true : false; }
      unittest {
        version(test_uim_entities) {
          // TODO
          }}

      string display() {
        if (value in _lookupValues) return _lookupValues[value]; 
        return null; }
      unittest {
        version(test_uim_entities) {
          // TODO
          }}
  // #endregion lookupValues


  override Json toJson() {
    return Json(value); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPAttributeLookup"));

unittest {
  version(test_uim_entities) {
    // TODO
    }}
