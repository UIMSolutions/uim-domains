module uim.entities.attributes.lookup;

@safe:
import uim.entities;

class DOOPAttributeLookup : DOOPAttributeInteger {
  this() { super(); }
  this(DOOPAttributeLookup attribute) { super(attribute); }
  this(Json newValue) { this(); this.value(newValue); }
  this(string newValue) { this(); this.value(newValue); }
  this(long newValue) { this(); this.value(newValue); }

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
  unittest {
    version(test_uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeLookup() { return new DOOPAttributeLookup(); }
auto OOPAttributeLookup(Json aValue) { return new DOOPAttributeLookup(aValue); }
auto OOPAttributeLookup(string aValue) { return new DOOPAttributeLookup(aValue); }

unittest {
  version(test_uim_entities) {
    // TODO
    }}
