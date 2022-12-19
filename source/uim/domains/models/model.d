module uim.domains.models.model;

@safe:
import uim.domains;

class DOOPModel : DEntity {
  this() {
    super();
    this.id(randomUUID);
    /* _storeAttclasses = new DOOPStoreAttclasses(this);
    _storeObjclasses = new DOOPStoreObjclasses(this);
    _storeObjects = new DOOPStoreObjects(this); */
  }
  this(UUID anId) { this(); this.id(anId); }
  this(string name) { this(); this.name(name); }
  this(Json newData) { this(); this.fromJson(newData); }


  /* protected DOOPStoreAttclasses _storeAttclasses;
  @property auto attributes() { return _storeAttclasses; }

  protected DOOPStoreObjclasses _storeObjclasses;
  @property auto objclasses() { return _storeObjclasses; }

  protected DOOPStoreObjects _storeObjects;
  @property auto objects() { return _storeObjects; }
 */
/*   DOOPAttribute[][UUID] _attributes; 
  DAttribute[][UUID] _attributes; 
  DOOPObjclass[][UUID] _objclasses; 
  DOOPObj[][UUID] _objs; 
 */
  mixin(SProperty!("string", "storage"));

  /* auto opIndex(UUID id) {
    DEntity result = attributes[id];
    if (!result) result =  objclasses[id];
    if (!result) result =  objects[id];
    return result;
  }
  auto opIndex(string name) {
    DEntity result = attributes[name];
    if (!result) result =  objclasses[name];
    if (!result) result =  objects[name];
    return result; }

  auto opIndex(UUID anId, size_t major) {
    DEntity result = attributes[id, major];
    if (!result) result =  objclasses[id, major];
    if (!result) result =  objects[id, major];
    return result; }

  auto opIndex(string name, size_t major) {
    DEntity result = attributes[name, major];
    if (!result) result =  objclasses[name, major];
    if (!result) result =  objects[name, major];
    return result; }

  auto opIndex(UUID anId, size_t major, size_t minor) {
    DEntity result = attributes[id, major, minor];
    if (!result) result =  objclasses[id, major, minor];
    if (!result) result =  objects[id, major, minor];
    return result; }

  auto opIndex(string name, size_t major, size_t minor) {
    DEntity result = attributes[name, major, minor];
    if (!result) result =  objclasses[name, major, minor];
    if (!result) result =  objects[name, major, minor];
    return result; }

  auto opIndex(UUID anId, string name) {
    DEntity result = attributes[id, name];
    if (!result) result =  objclasses[name];
    if (!result) result =  objects[name];
    return result; }

  auto opIndex(UUID anId, string name, size_t major) {
    DEntity result = attributes[id, name, major];
    if (!result) result =  objclasses[id, name, major];
    if (!result) result =  objects[id, name, major];
    return result; }

  auto opIndex(UUID anId, string name, size_t major, size_t minor) {
    DEntity result = attributes[id, name, major, minor];
    if (!result) result =  objclasses[id, name, major, minor];
    if (!result) result =  objects[id, name, major, minor];
    return result; } */

  /* auto attributes() {
    return _attributes; }

  O attributes(this O)(string name, DOOPAttribute addItem) {
    this.attributes(addItem.name(name));
    return cast(O)this; }

  O attributes(this O)(DOOPAttribute[] newAttributes...) {
    this.attributes(newAttributes);
    return cast(O)this; }
  
  O attributes(this O)(DOOPAttribute[] newAttributes) {
    foreach (item; newAttributes) {
      if (item.id in _attributes) _attributes[item.id] ~= item.model(this);
      else _attributes[item.id] = [item.model(this)]; }
    return cast(O)this; }

  auto attribute(UUID anId, string aName = null, long aMajor = 0, long aMinor = 0) {
    DOOPAttribute[] entityVersions; 
    if (anId in _attributes) {
      entityVersions = _attributes[anId];
    }
    else if (aName.length > 0) {
      foreach(k,v; _attributes) {
        if (v.length == 0) continue;

        if (v[0].name == aName) {
          entityVersions = v;
          break;
        }
      }
    }

    return entityVersions.version_(aMajor, aMinor);
  }

  auto attributes() {
    return _attributes; }

  O attributes(this O)(string name, DAttribute addAttclass) {
    this.attributes(addAttclass.name(name));
    return cast(O)this; }

  O attributes(this O)(DAttribute[] newAttclasses...) {
    this.attributes(newAttclasses);
    return cast(O)this; }
  
  O attributes(this O)(DAttribute[] newAttclasses) {
    foreach (item; newAttclasses) {
      if (item.id in _attributes) _attributes[item.id] ~= item.model(this);
      else _attributes[item.id] = [item.model(this)]; }
    return cast(O)this; }

  auto attribute(string aName, long aMajor = 0, long aMinor = 0) {
    return attribute(UUID(), aName, aMajor, aMinor);
  }
  auto attribute(UUID anId, string aName = null, long aMajor = 0, long aMinor = 0) {
    DAttribute[] entityVersions; 
    if (anId in _attributes) {
      entityVersions = _attributes[anId];
    }
    else if (aName.length > 0) {
      foreach(k,v; _attributes) {
        if (v.length == 0) continue;

        if (v[0].name == aName) {
          entityVersions = v;
          break;
        }
      }
    }

    return entityVersions.version_(aMajor, aMinor);
  } */

    mixin(SProperty!("UUID[]", "objclasses"));
    mixin(SProperty!("UUID[]", "attributes"));
/*   auto objclasses() {
    return _objclasses; }

  O objclasses(this O)(string name, DOOPObjclass addItem) {
    this.objclasses(addItem.name(name));
    return cast(O)this; }

  O objclasses(this O)(DOOPObjclass[] newObjclasses...) {
    this.objclasses(newObjclasses);
    return cast(O)this; }
  
  O objclasses(this O)(DOOPObjclass[] newObjclasses) {
    foreach (item; newObjclasses) {
      if (item.id in _objclasses) _objclasses[item.id] ~= item.model(this);
      else _objclasses[item.id] = [item.model(this)]; }
    return cast(O)this; }

  auto objclass(string aName, long aMajor = 0, long aMinor = 0) {
    return objclass(UUID(), aName, aMajor, aMinor); }
    
  auto objclass(UUID anId, string aName = null, long aMajor = 0, long aMinor = 0) {
    DOOPObjclass[] entityVersions; 
    if (anId in _objclasses) {
      entityVersions = _objclasses[anId];
    }
    else if (aName.length > 0) {
      foreach(k,v; _objclasses) {
        if (v.length == 0) continue;

        if (v[0].name == aName) {
          entityVersions = v;
          break;
        }
      }
    }
 
    return entityVersions.version_(aMajor, aMinor);
  }
*/
 /*  auto objs() {
      return _objclasses; }

  O objs(this O)(string name, DOOPObj addItem) {
    this.objs(addItem.name(name));
    return cast(O)this; }

  O objs(this O)(DOOPObj[] newObjs...) {
      this.objs(newObjs);
      return cast(O)this; }
    
    O objs(this O)(DOOPObj[] newObjs) {
      foreach (item; newObjs) {
        if (item.id in _objs) _objs[item.id] ~= item.model(this);
        else _objs[item.id] = [item.model(this)]; }
      return cast(O)this; }

    auto obj(UUID anId, string aName = null, long aMajor = 0, long aMinor = 0) {
      DOOPObj[] entityVersions; 
      if (anId in _objs) {
        entityVersions = _objs[anId];
      }
      else if (aName.length > 0) {
        foreach(k,v; _objs) {
          if (v.length == 0) continue;

          if (v[0].name == aName) {
            entityVersions = v;
            break;
          }
        }
      }

    return entityVersions.version_(aMajor, aMinor);
  } */

  Json[] jsons(UUID id) {
    Json[] results;
    return results;
  }

 override DEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    writeln(aJson);
        
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;

      switch(k) {
        case "attributes": 
          auto jsons = v.get!(Json[]);
          _attributes = jsons.map!(a => UUID(a.get!string)).array;
          break;
        case "objclasses": 
          auto jsons = v.get!(Json[]); 
          _objclasses = jsons.map!(a => UUID(a.get!string)).array;
          break;
        default: break;
      }       
    }
    return this;
  }

  override Json toJson(string[] showFields = null, string[] hideFields = null) {    
    auto result = super.toJson(showFields, hideFields);

    Json ids = Json.emptyArray;
    foreach(id; this.attributes) ids ~= id.toString;
    result["attributes"] = ids;

    ids = Json.emptyArray; foreach(id; this.objclasses) ids ~= id.toString;
    result["objclasses"] = ids;

/*     auto jsonObjects = Json.emptyArray;
    result["objects"] = jsonObjects; */

    return result; }
}
auto OOPModel() { return new DOOPModel; }
auto OOPModel(UUID id) {  return new DOOPModel(id); }
auto OOPModel(string name) {  return new DOOPModel(name); }
auto OOPModel(DETBCollection aCollection) {  return OOPModel.collection(aCollection); }
auto OOPModel(DETBCollection aCollection, UUID newId) {  return OOPModel.collection(aCollection).id(newId); }
auto OOPModel(DETBCollection aCollection, Json json) { return (new DOOPModel(json)).collection(aCollection); }
auto OOPModel(Json json) { return new DOOPModel(json); }