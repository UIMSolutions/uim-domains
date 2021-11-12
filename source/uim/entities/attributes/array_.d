module uim.entities.attributes.array_;

@safe:
import uim.entities;

class DOOPAttributeArray : DOOPAttribute {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }

  mixin(SProperty!("Json[]", "values"));
  
  override Json toJson() {
    return Json(values);    
  }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromJson(Json newValue) {
    _values = newValue.get!(Json[]); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override string toString() {
    return _values.map!(a => a.toString).join(","); }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}

  override void fromString(string newValue) {
    _values = newValue
      .split(",").map!(a => a.strip) // split in to items
      .filter!(a => a.length > 0) // select not empty
      .map!(a => Json(a)).array; // convert to Json 
      }
  unittest {
    version(uim_entities) {
      // TODO Add tests
      }}
}
auto OOPAttributeArray() { return new DOOPAttributeArray(); }
auto OOPAttributeArray(Json json) { return new DOOPAttributeArray(json); }

unittest {
  version(uim_entities) {
    // TODO Add tests
    }}
