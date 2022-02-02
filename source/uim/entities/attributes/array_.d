module uim.entities.attributes.array_;

@safe:
import uim.entities;

class DOOPArrayAttribute : DOOPAttribute {
  this() { super(); }

  override string type() { return "array"; }
  override bool isArray() { return true; }
}

