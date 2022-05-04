module uim.entities.models.objclass;

@safe:
import uim.entities;

class DOOPObjclass : DOOPEntity {
  this() { super(); }
  this(UUID myId) { super(myId); }
  this(string myName) { super(myName); }
  this(UUID myId, string myName) { super(myId, myName); }
  this(Json newData) { this(); this.fromJson(newData); }

  /// Objclass from which it inherits
  mixin(SProperty!("UUID", "objclass"));
  
  O objclass(this O)(UUID myId, size_t myMajor = 0, size_t myMinor = 0) { 
    _objclass = OOPObjclass.id(myId).versionMajor(myMajor).versionMinor(myMinor);
    return cast(O)this; }

  O objclass(this O)(string myName, size_t myMajor = 0, size_t myMinor = 0) { 
    _objclass = OOPObjclass.name(myName).versionMajor(myMajor).versionMinor(myMinor);
    return cast(O)this; }

  O objclass(this O)(DOOPObjclass myObjclass) { 
    _objclass = myObjclass;     
    return cast(O)this; }

  version(test_uim_entities) {
    unittest {    
      /// TODO
    }
  }

  ///
  mixin(SProperty!("UUID[string]", "attributes"));

  auto createObject(string aName) {
    auto result = OOPObj;
    result.model(this.model);
    // result.objclass(this);
    result.name(aName);
    // result.attributes(this.attributes);
    
/*     foreach(name, attribute; attributes ) {
      if (attribute) {
        if (auto model = this.model) {
          if (auto ac = model.attributes.entity(name)) {
            result.attributes[name] = ac.createAttribute(name);    
          }
        } 
      }
     }*/
    return result; }
  version(test_uim_entities) {
    unittest {    
      // assert(OOPObjclass.createObj("test"));
    }
  }


 override DOOPEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    writeln(aJson);
        
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;

      switch(k) {
        case "attributes":
          foreach(name, id; v.get!(Json[string])) _attributes["name"] = UUID(id.get!string);
          break;
        default: break;
      }       
    }
    return this;
  }

  /** 
  * Convert data to json (using vibe's funcs)
  **/ 
  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);

    auto acs = Json.emptyObject;
    foreach(k, v; this.attributes) acs[k] = v.toString;
    result["attributes"] = acs;
    
    return result;
  }
}
auto OOPObjclass() { return new DOOPObjclass; }
auto OOPObjclass(UUID id) { return new DOOPObjclass(id); }
auto OOPObjclass(string name) { return new DOOPObjclass(name); }
auto OOPObjclass(UUID id, string name) { return new DOOPObjclass(id, name); }
auto OOPObjclass(Json json) { return (new DOOPObjclass(json)); }
auto OOPObjclass(DETBCollection aCollection, Json json) { return (new DOOPObjclass(json)).collection(aCollection); }

