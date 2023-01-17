/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.lookups.integers.string_;

@safe:
import uim.domains;

class DIntegerStringValue : DIntegerValue {
  mixin(ValueThis!("IntegerStringValue", "int"));
}
mixin(ValueCalls!("IntegerStringValue", "int"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}