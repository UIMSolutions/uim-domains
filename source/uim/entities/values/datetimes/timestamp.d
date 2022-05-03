module uim.entities.values.datetimes.timestamp;

@safe:
import uim.entities;

class DTimestampValue : DLongValue {
  mixin(ValueThis!("TimestampValue", "long"));  
}
mixin(ValueCalls!("TimestampValue", "long"));  

version(test_uim_entities) {
  unittest {    
    // TODO
}} 