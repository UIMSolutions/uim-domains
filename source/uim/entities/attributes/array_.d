module uim.entities.attributes.array_;

@safe:
import uim.entities;

class DOOPAttributeArray : DOOPAttribute {
  this() { super(); }

  override string type() { return "array"; }
  override bool isArray() { return true; }
}

