/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.lookups.integers.integer;

@safe:
import uim.domains;

class DIntegerIntegerValue : DIntegerValue {
  mixin(ValueThis!("IntegerIntegerValue", "int"));
}
mixin(ValueCalls!("IntegerIntegerValue", "int"));

version(test_uim_domains) {
  unittest {  
    // TODO tests
  }
}