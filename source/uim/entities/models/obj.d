module uim.entities.models.obj;

@safe:
import uim.entities;

class DOOPObj : DOOPEntity {
  this() { 
    super("obj-"~this.id.toString); }
  this(UUID myId) { 
    this(); 
    this.id(myId); }
  this(string myName) { 
    this(); 
    this.name(myName); }
  this(UUID myId, string myName) { 
    this(); 
    this
    .id(myId)
    .name(myName); }

  this(Json aJson) { 
    this();    

    this
    .fromJson(aJson); }

  mixin(SProperty!("UUID", "objclass"));
  

 override DOOPEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    writeln(aJson);
        
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;

      switch(k) {
        default: 
        if (k in this.attributes) {
          // 
        }
        break;
      }       
    }
    return this;
  } 

  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);
    
    result["objclass"] = this.objclass.toString;
    auto attributesJson = Json.emptyObject;
    foreach(k, v; attributes) {
      result[k] = ""; 
    }

    

    return result;
  } 
}
@safe auto OOPObj() { return new DOOPObj; }
@safe auto OOPObj(UUID myId) { return new DOOPObj(myId); }
@safe auto OOPObj(string myName) { return new DOOPObj(myName); }
@safe auto OOPObj(UUID myId, string myName) { return new DOOPObj(myId, myName); }
@safe auto OOPObj(Json json) { return (new DOOPObj(json)); }
@safe auto OOPObj(DETBCollection aCollection, Json json) { return (new DOOPObj(json)).collection(aCollection); }

