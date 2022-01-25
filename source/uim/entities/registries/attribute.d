module uim.entities.registries.attribute;

@safe:
import uim.entities;

class DOOPAttributeRegistry {
  this() {}

  protected DOOPAttribute[string] _attributes;
  DOOPAttribute entry(string path) {
    return _attributes.get(path, null); }
  unittest {
    version(test_uim_entities) {
      // TODO 
      }}

  DOOPAttribute opIndex(string path) {
    return _attributes.get(path, null); }
  unittest {
    version(test_uim_entities) {
      // TODO 
      }}
  
  O register(this O)(string name, DOOPAttribute newAttribute) {
    _attributes[name] = newAttribute;
    return cast(O)this;
  }

  O register(this O)(DOOPAttribute newAttribute, string name) {
    _attributes[name] = newAttribute;
    return cast(O)this; }

  string[] paths() {
    return _attributes.byKey.array; }

  DOOPAttribute remove(string path) { 
    auto selectedEntry = this.entry(path);
    if (selectedEntry) _attributes.remove(path);
    return selectedEntry; 
  }
  unittest {
    version(test_uim_entities) {
      // TODO 
      }}
}
// auto OOPRegistry() { return new DOOPRegistry; }