/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
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
