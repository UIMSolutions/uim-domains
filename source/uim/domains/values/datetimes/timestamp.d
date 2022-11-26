/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.datetimes.timestamp;

@safe:
import uim.domains;

class DTimestampValue : DLongValue {
  mixin(ValueThis!("TimestampValue", "long"));  
}
mixin(ValueCalls!("TimestampValue", "long"));  

version(test_uim_domains) {
  unittest {    
    // TODO
}} 