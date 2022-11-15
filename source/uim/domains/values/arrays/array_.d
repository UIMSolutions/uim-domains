module uim.domains.values.arrays.array_;

@safe:
import uim.domains;

class DArrayValue : DValue {
  this() { super(); }  

  override void initialize() {
    super.initialize;

    this
      .isArray(true);
  }
}

