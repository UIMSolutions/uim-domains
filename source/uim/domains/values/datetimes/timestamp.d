module uim.domains.values.datetimes.timestamp;

@safe:
import uim.domains;

class DTimestampValue : DLongValue {
  mixin(ValueThis!("TimestampValue", "long"));  
}
mixin(ValueCalls!("TimestampValue", "long"));  

version(test_uim_entities) {
  unittest {    
    // TODO
}} 