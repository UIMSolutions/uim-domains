module uim.domains.values.null_;

@safe:
import uim.domains;

class DNullValue : DValue {
  mixin(ValueThis!("NullValue"));  

  override void initialize() {
    super.initialize;

    this
      .isNull(true);
  }

  override Json toJson() { return Json(null); }
  override string toString() { return null; }
}
mixin(ValueCalls!("NullValue"));  
