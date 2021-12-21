module uim.entities.attributes.percentage;

@safe:
import uim.entities;

class DOOPAttributePercentage : DOOPAttributeDouble {
  this() { super(); }
  this(Json json) { this(); this.fromJson(json); }
}
auto OOPAttributePercentage() { return new DOOPAttributePercentage(); }
auto OOPAttributePercentage(Json json) { return new DOOPAttributePercentage(json); }

unittest {
  version(uim_entities) {  
    // TODO tests
  }
}