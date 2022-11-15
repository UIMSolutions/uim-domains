module uim.domains.enumerations.enumeration; 

@safe:
import uim.domains;

interface IEnumeration {}

class DEnumeration(K, V) : IEnumeration {
  this() {
  }
  
  void initialize() {}
                  
  private K[] _keys;
  private V[] _values;
  
  auto keyValues() {
    K[V][] results;
  }   
  
  auto value(K key) {
    foreach(key; keys) {
      
    }
    return NullValue;
  } 
  
  
}
