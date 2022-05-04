module uim.entities.values.arrays.array_;

@safe:
import uim.entities;

class DArrayValue : DValue {
  this() { super(); }  

  override void initialize() {
    super.initialize;

    this
      .isArray(true);
  }
}

