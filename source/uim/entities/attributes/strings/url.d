module uim.entities.attributes.strings.url;

@safe:
import uim.entities;

class DOOPAttributeUrl : DOOPAttributeString {
  this() { super(); }
  this(DOOPAttributeUrl attribute) { 
    super(attribute);
    this.value(attribute.value); }
  this(Json aValue) { this(); this.fromJson(aValue); }
  this(string aValue) { this(); this.fromString(aValue); }
}
auto OOPAttributeUrl() { return new DOOPAttributeUrl(); }
auto OOPAttributeUrl(Json aValue) { return new DOOPAttributeUrl(aValue); }
auto OOPAttributeUrl(string aValue) { return new DOOPAttributeUrl(aValue); }

unittest {
  version(uim_entities) {
  }  
}