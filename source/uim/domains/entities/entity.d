/*********************************************************************************************************
*	Copyright: © 2017-2022, UI Manufaktur UG, Since 2022 Ozan Nurettin Süel (Sicherheitsschmiede)          *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: UI Manufaktur Team, Ozan Nurettin Süel (Sicherheitsschmiede)                                  *
**********************************************************************************************************/
module uim.domains.entity;

@safe:
import uim.domains;

class DEntity : IRegistrable {
  static namespace = moduleName!DEntity;

  // Constructors
  this() { initialize; }

  this(DOOPModel myModel) { this().model(myModel); }
  this(UUID myId) { this().id(myId).name(this.id.toString); }
  this(string myName) { this().name(myName); }
  this(UUID myId, string myName) { this(myId).name(myName); }

  this(Json aJson) { this();    
    if (aJson != Json(null)) this.fromJson(aJson); }

  // Initialize entity 
  void initialize() {
    this
    .id(randomUUID)
    .etag(toTimestamp(now))
    .name(this.id.toString) 
    .createdOn(now)
    .lastAccessedOn(createdOn)
    .modifiedOn(createdOn)
    .hasVersions(false)
    .hasLanguages(false)
    .config(Json.emptyObject)
    .values(Values)
    .versionOn(this.createdOn)
    .versionNumber(1L) // Allways starts with version 1
    .versionBy(this.createdBy);
  }

  protected string _registerPath;
  void registerPath(string path) { _registerPath = path; }
  string registerPath() { return _registerPath; }

  string[] fieldNames() {
    return [      
      "registerPath", "id", "etag", "name", "display", "createdOn", "createdBy", "modifiedOn", "modifiedBy", "lastAccessedOn", 
      "lastAccessBy", "description", "isLocked", "lockedOn", "lockedBy", "isDeleted", "deletedOn", "deletedBy", "versionNumber", 
      "versionDisplay", "versionMode", "versionOn", "versionBy", "versionDescription"]~
      /* attributes.keys~ */values.keys;
  }

  mixin(OProperty!("UUID", "id"));
  O id(this O)(string newValue) {
    if (newValue.isUUID) this.id(UUID(newValue));
    return cast(O)this;
  }
  mixin(OProperty!("string", "pool"));
  mixin(OProperty!("long", "etag"));
  O etag(this O)(string newValue) { 
    this.etag(to!long(newValue)); 
    return cast(O)this; }

  mixin(OProperty!("DETBCollection", "collection"));
  mixin(OProperty!("string", "siteName"));
  mixin(OProperty!("DOOPModel", "model"));
  mixin(OProperty!("string[string]", "parameters"));
  mixin(OProperty!("Json", "config"));

/// Versioning
  ///	Date and time when the entity was versioned.	
  mixin(OProperty!("long", "versionOn"));
  O versionOn(this O)(SysTime aTime) {
    this.versionOn(toTimeStamp(aTime));
    return cast(O)this;
  }
  O versionOn(this O)(string aTime) {
    this.versionOn(to!long(aTime));
    return cast(O)this;
  }
  
  ///	Unique identifier of the user who versioned the entity.
  mixin(OProperty!("UUID", "versionBy"));
  O versionBy(this O)(string anUuid) { 
    this.versionBy(UUID(anUuid)); 
    return cast(O)this;
  }

  mixin(OProperty!("string", "versionDescription"));
  mixin(OProperty!("string", "versionDisplay"));
  mixin(OProperty!("string", "versionMode"));

  O createVersion(this O)(string display = "", string description = "") {
    this.hasVersions = true;

    UUID user;
    auto result = new O(this.toJson);
    result.versionNumber = result.versionNumber + 1;
    result.versionDescription = description;
    result.versionOn(now);   
    result.modifiedOn(result.versionOn);   
    result.versionBy(user);   
    return cast(O)result;
  }

  O[] versions(this O)() {
    O[] results;

    if (model) {
      foreach(json; model.jsons([this.id])) {
        results ~= (new O(model)).fromJson(json);
      }
    }

    return result;
  }

/*
  O attribute(this O)(string name, string type) {
    if (type.strip.indexOf("{") == 0) {
      Json json = parseJsonString(type);
      this.attribute(name, json);
    }
    else {
      switch(type.toLower) {
        case "bool": _attributes[name] = OOPAttributeBool; break;
        case "long": _attributes[name] = OOPLongAttribute; break;
        case "double": _attributes[name] = OOPAttributeDouble; break;
        case "string": _attributes[name] = OOPStringAttribute; break;
        case "userid": _attributes[name] = OOPAttributeUserId; break;
        case "uuid": _attributes[name] = OOPUUIDAttribute; break;
        case "array": _attributes[name] = OOPArrayAttribute; break;
        case "object": _attributes[name] = OOPAttributeObject; break;
        default:
          _attributes[name] = OOPStringAttribute; break;  
      }}
    return cast(O)this;
  }
  O attribute(this O)(string name, Json json) {
    switch(json["datatype"].get!string.toLower) {
        case "bool": _attributes[name] = OOPAttributeBool.config(json); break;
        case "long": _attributes[name] = OOPLongAttribute.config(json); break;
        case "double": _attributes[name] = OOPAttributeDouble.config(json); break;
        case "string": _attributes[name] = OOPStringAttribute.config(json); break;
        case "userid": _attributes[name] = OOPAttributeUserId.config(json); break;
        case "uuid": _attributes[name] = OOPUUIDAttribute.config(json); break;
        case "array": _attributes[name] = OOPArrayAttribute.config(json); break;
        case "object": _attributes[name] = OOPAttributeObject.config(json); break;
      default:
        _attributes[name] = OOPStringAttribute.config(json); break;  
    }
    return cast(O)this;
  }
  O attribute(this O)(string name, DOOPAttribute newAttribute) {
    _attributes[name] = newAttribute;  
    return cast(O)this; }
  // Every entity has a unique id as a primary key
  mixin(OProperty!("UUID", "id"));
  O id(this O)(string anUuid) { this.id(UUID(anUuid)); return cast(O)this; }
  version(test_uim_entities) {
    unittest {
      auto id1 = randomUUID;
      assert(Entity.id(id1).id == id1);
      auto id2 = randomUUID;
      assert(Entity.id(id1).id(id2).id == id2);
    }
  } */

  mixin(OProperty!("DValues", "values"));
  O addValues(this O)(DAttribute[] classes) {
    foreach(aClass; classes) {
      this.values.addValue(aClass.name, aClass.createValue);
    }
    return cast(O)this;
  }
  O addValues(this O)(DAttribute[string] classes) {
    foreach(key; classes.byKey) {
      this.values.addValue(key, classes[key].createValue);
    }
    return cast(O)this;
  }
  O addValues(this O)(DValue[string] newValues) {
    this.values.add(newValues);
    return cast(O)this;
  }

  // Every entity has a unique name - not primarykey only for human search
  string _name;
  O name(this O)(string  newName) { _name = newName.strip.toLower.replace(" ", "_"); return cast(O)this; }
  string name() { return _name; }
  version(test_uim_entities) {
    unittest {
      assert(Entity.name("name1").name == "name1");
      assert(Entity.name("name1").name("name2").name == "name2");
      assert(Entity.name("name name").name == "name_name");
    }
  }

  // Display of entity 
  mixin(OProperty!("string", "display"));

  /// Date and time when the entity was created.
  mixin(OProperty!("long", "createdOn"));
  O createdOn(this O)(SysTime aTime) {
    this.createdOn(toTimestamp(aTime));
    return cast(O)this;
  }
  O createdOn(this O)(string aTime) {
    this.createdOn(to!long(aTime));
    return cast(O)this;
  }
  version(test_uim_entities) {
    unittest {
/*     auto now1 = now; auto now2 = now;
    assert(Entity.createdOn(now1).createdOn == now1);
    assert(Entity.createdOn(now1).createdOn(now2).createdOn == now2);
 */  }
  }

  ///   createdBy	Unique identifier of the user who created the entity.	
  mixin(OProperty!("UUID", "createdBy"));
  O createdBy(this O)(string anUuid) { 
    if (anUuid.isUUID) this.createdBy(UUID(anUuid)); 
    else _createdBy = NULLUUID;
    return cast(O)this; }

  ///	Date and time when the entity was modified.	
  mixin(OProperty!("long", "modifiedOn"));
  O modifiedOn(this O)(SysTime aTime) {
    this.modifiedOn(toTimestamp(aTime));
    return cast(O)this;
  }
  O modifiedOn(this O)(string aTime) {
    this.modifiedOn(to!long(aTime));
    return cast(O)this;
  }

  ///	Unique identifier of the user who modified the entity.
  mixin(OProperty!("UUID", "modifiedBy"));
  O modifiedBy(this O)(string anUuid) { 
    if (anUuid.isUUID) this.modifiedBy(UUID(anUuid)); 
    else _modifiedBy = NULLUUID;
    return cast(O)this; }

  /// Date and time when the entity was created.
  mixin(OProperty!("long", "lastAccessedOn"));
  O lastAccessedOn(this O)(SysTime aTime) {
    this.lastAccessedOn(toTimestamp(aTime));
    return cast(O)this;
  }
  O lastAccessedOn(this O)(string aTime) {
    this.lastAccessedOn(to!long(aTime));
    return cast(O)this;
  }
  version(test_uim_entities) {
    unittest {
/*     auto now1 = now; auto now2 = now;
    assert(Entity.createdOn(now1).createdOn == now1);
    assert(Entity.createdOn(now1).createdOn(now2).createdOn == now2);
 */  }
  }

  ///   lastAccessBy	Unique identifier of the user who accessed the entity.	
  mixin(OProperty!("UUID", "lastAccessBy"));
  O lastAccessBy(this O)(string anUuid) { 
    if (anUuid.isUUID) this.lastAccessBy(UUID(anUuid)); 
    else _lastAccessBy = NULLUUID;
    return cast(O)this; }

  ///	Description about the entity and more
  mixin(OProperty!("string", "description"));

  ///	Entity has only one version. Version handling starts with EntityVersion	
  mixin(OProperty!("bool", "hasVersions"));
  O hasVersions(this O)(string newValue) {
    this.hasVersions(newValue == "true");
    return cast(O)this;
  }
  ///	entity has only one language. Language handling starts with EntityLanguage	
  mixin(OProperty!("bool", "hasLanguages"));
  O hasLanguages(this O)(string newValue) {
    this.hasLanguages(newValue == "true");
    return cast(O)this; }

  ///	Date and time when the entity is locked.	
  mixin(OProperty!("bool", "isLocked"));
  O isLocked(this O)(string newValue) {
    this.isLocked(newValue == "true");
    return cast(O)this; }
  ///	Date and time when the entity was locked.	
  mixin(OProperty!("long", "lockedOn"));
  O lockedOn(this O)(SysTime aTime) {
    this.lockedOn(toTimestamp(aTime));
    return cast(O)this; }
  O lockedOn(this O)(string aTime) {
    this.lockedOn(to!long(aTime));
    return cast(O)this; }

  ///	Unique identifier of the user who modified the entity.
  mixin(OProperty!("UUID", "lockedBy"));
  O lockedBy(this O)(string anUuid) { 
    this.lockedBy(UUID(anUuid)); 
    return cast(O)this; }

  ///	Date and time when the entity is deleted.	
  mixin(OProperty!("bool", "isDeleted"));
  O isDeleted(this O)(string newValue) {
    this.isDeleted(newValue == "true");
    return cast(O)this; }
  
  ///	Date and time when the entity was locked.	
  mixin(OProperty!("long", "deletedOn"));
  O deletedOn(this O)(SysTime aTime) {
    this.deletedOn(toTimestamp(aTime));
    return cast(O)this; }
  O deletedOn(this O)(string aTime) {
    this.deletedOn(to!long(aTime));
    return cast(O)this; }

  ///	Unique identifier of the user who deleted the entity.
  mixin(OProperty!("UUID", "deletedBy"));
  O deletedBy(this O)(string anUuid) { 
    this.deletedBy(UUID(anUuid)); 
    return cast(O)this; }

  mixin(OProperty!("long", "versionNumber"));
  O versionNumber(this O)(string newValue) {
    this.versionNumber(to!long(newValue));
    return cast(O)this; }
  
  STRINGAA selector(STRINGAA parameters) {
    STRINGAA results;

    auto foundId = parameters.get("entity_id", parameters.get("id", ""));
    if (foundId.length > 0) results["id"] = foundId;               
    auto foundName = parameters.get("entity_name", parameters.get("name", ""));
    if (foundName.length > 0) results["name"] = foundName;               

    return results;
  }

  // Read entity from STRINGAA
  DEntity fromStringAA(STRINGAA reqParameters) {
    foreach(k, v; reqParameters) this[k] = v; 
    return this;
  }

  DEntity fromRequest(STRINGAA requestValues) {
    debug writeln("fromRequest...", requestValues);
    debug writeln("fieldNames...", fieldNames);
    foreach(fName; fieldNames) {
      auto requestKey = "entity_"~fName;
      if (auto boolValue = cast(DBooleanValue)values[fName]) {
        boolValue.value(requestKey in requestValues ? true : false);
      }
      else {
        if (requestKey in requestValues) {
          this[fName] = requestValues[requestKey];
        }
      }
    }
    return this;
  }

  // Converts entity property to string, which is HTML compatible
  string opIndex(string key) {
    switch(key) {
      case "registerPath": return this.registerPath;
      case "id": return this.id.toString;
      case "etag": return to!string(this.etag);
      case "name": return this.name;
      case "display": return this.display;
      case "createdOn": return to!string(this.createdOn); 
      case "createdBy": return this.createdBy.toString; 
      case "modifiedOn": return to!string(this.modifiedOn); 
      case "modifiedBy": return this.modifiedBy.toString; 
      case "lastAccessedOn": return to!string(this.lastAccessedOn); 
      case "lastAccessBy": return this.lastAccessBy.toString; 
      case "description": return this.description;
      case "isLocked": return this.isLocked ? "true" : "false";
      case "lockedOn": return to!string(this.lockedOn);
      case "lockedBy": return this.lockedBy.toString; 
      case "isDeleted": return this.isDeleted ? "true" : "false";
      case "deletedOn": return to!string(this.deletedOn);
      case "deletedBy": return this.deletedBy.toString; 
      case "versionNumber": return to!string(this.versionNumber);
      case "versionDisplay": return this.versionDisplay;
      case "versionMode": return this.versionMode;
      case "versionOn": return to!string(this.versionOn);
      case "versionBy": return to!string(this.versionBy);
      case "versionDescription": return this.versionDescription;
      default:
        //if (key in attributes) { return attributes[key].stringValue; }
        if (values.hasValue(key)) { return values[key].toString; }
        return null;
    }      
  }

  DEntity opIndexAssign(string value, string key) {
    switch(key) {
      case "id": this.id(value); break;
      case "etag": this.etag(value); break;
      case "name": this.name(value); break;
      case "display": this.display(value); break;
      case "createdOn": this.createdOn(value); break;
      case "createdBy": this.createdBy(value); break;
      case "modifiedOn": this.modifiedOn(value); break; 
      case "modifiedBy": this.modifiedBy(value); break; 
      case "lastAccessedOn": this.lastAccessedOn(value); break; 
      case "lastAccessBy": this.lastAccessBy(value); break; 
      case "description": this.description(value); break;
      case "isLocked": this.isLocked(value); break;
      case "lockedOn": this.lockedOn(value); break;
      case "lockedBy": this.lockedBy(value); break; 
      case "isDeleted": this.isDeleted(value); break;
      case "deletedOn": this.deletedOn(value); break;
      case "deletedBy": this.deletedBy(value); break; 
      case "hasVersions": this.hasVersions(value); break;
      case "hasLanguages": this.hasLanguages(value); break;
      case "versionNumber": this.versionNumber(value); break;
      case "versionDisplay": this.versionDisplay(value); break;
      case "versionMode": this.versionMode(value); break;
      case "versionOn": this.versionOn(value); break;
      case "versionBy": this.versionBy(value); break;
      case "versionDescription": this.versionDescription(value); break;
      default:
        // if (key in attributes) attributes[key].value(value); 
        values[key] = value;
        break;
    }      
    return this;
  }

  // Read HTML value and set entity value
  DEntity opIndexAssign(UUID value, string key) {
    switch(key) {
      case "id": this.id(value); break;
      case "createdBy": this.createdBy(value); break;
      case "modifiedBy": this.modifiedBy(value); break; 
      case "lastAccessBy": this.lastAccessBy(value); break; 
      case "lockedBy": this.lockedBy(value); break; 
      case "deletedBy": this.deletedBy(value); break; 
      case "versionBy": this.versionBy(value); break;
      default:
        /* if (key in attributes) {
          if (auto att = cast(DOOPUUIDAttribute)attributes[key]) att.value(value); 
        }  */
        values[key] = value;
        break;
    }      
    return this;
  }

  void opIndexAssign(long value, string key) {
    switch(key) {
      case "createdOn": this.createdOn(value); break;
      case "modifiedOn": this.modifiedOn(value); break; 
      case "lastAccessedOn": this.lastAccessedOn(value); break; 
      case "lockedOn": this.lockedOn(value); break;
      case "deletedOn": this.deletedOn(value); break;
      case "versionOn": this.versionOn(value); break;
      default:
        values[key] = value;
        break;
    }      
  } 

  void opIndexAssign(bool value, string key) {
    switch(key) {
      case "isLocked": this.isLocked(value); break;
      case "isDeleted": this.isDeleted(value); break;
      case "hasVersions": this.hasVersions(value); break;      
      default:
        /* if (key in attributes) {
          if (auto att = cast(DOOPBooleanAttribute)attributes[key]) att.value(value); 
        }  */
        values[key] = value;
        break;
    }      
  }

  // Set field(key) if type Entity
  void opIndexAssign(DEntity value, string key) {
    switch(key) {
      default:
        /* if (key in attributes) {
          debug writeln("key %s in attributes %s".format(key, attributes[key].stringValue));
          if (auto att = cast(DEntityAttribute)attributes[key]) att.value(value); 
        }  */
        break;
    }      
  }

  DEntity create() { return new DEntity; }
  DEntity create(Json data) { return create.fromJson(data); }

  DEntity clone() { return create.fromJson(toJson); }
  DEntity clone(Json data) { return create.fromJson(toJson).fromJson(data); }
  
  DEntity copyTo(DEntity targetOfCopy) {
    return targetOfCopy ? targetOfCopy.fromJson(this.toJson) : targetOfCopy; }
  DEntity copyFrom(DEntity targetOfCopy) {
    return targetOfCopy ? fromJson(targetOfCopy.toJson) : this;
  }

  Bson toBson() { return Bson(toJson); }

  DEntity fromJson(Json aJson) {
    if (aJson == Json(null)) return this;
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "pool": this.pool(v.get!string); break;
        case "id": this.id(v.get!string); break;
        case "etag": this.etag(v.get!long); break;
        case "name": this.name(v.get!string); break;
        case "display": this.display(v.get!string); break;
        case "createdOn": this.createdOn(v.get!long); break;
        case "createdBy": this.createdBy(v.get!string); break;
        case "modifiedOn": this.modifiedOn(v.get!long); break;
        case "modifiedBy": this.modifiedBy(v.get!string); break;
        case "description": this.description(v.get!string); break;
        case "isLocked": this.isLocked(v.get!bool); break;
        case "lockedOn": this.lockedOn(v.get!long); break;
        case "lockedBy": this.lockedBy(v.get!string); break;
        case "isDeleted": this.isDeleted(v.get!bool); break;
        case "deletedOn": this.deletedOn(v.get!long); break;
        case "deletedBy": this.deletedBy(v.get!string); break;
        case "model": 
          auto id = v.get!string;
          if (id.isUUID) this.model(OOPModel(UUID(id)));
          else this.model(OOPModel(id));
          break;
        case "hasVersions": this.hasVersions(v.get!bool); break;
        case "hasLanguages": this.hasLanguages(v.get!bool); break;
        case "parameters": 
          STRINGAA values;
          foreach (kv; v.byKeyValue) {
            values[kv.key] = kv.value.get!string;
          }
          this.parameters(values);
          break;
        case "config": this.config(v); break;
        case "versionNumber": this.versionNumber(v.get!long); break;
        case "versionDisplay": this.versionDisplay(v.get!string); break;
        case "versionMode": this.versionMode(v.get!string); break;
        case "versionOn": this.versionOn(v.get!long); break;
        case "versionBy": this.versionBy(v.get!string); break;
        case "versionDescription": this.versionDescription(v.get!string); break;
        default: 
          /* if (k in _attributes) {
            // debug writeln("Found ", k);
            _attributes[k].value(v); 
          } */
          this.values[k].value(v);
          break;
      }            
    }
    return this;
  }

  Json toJson(string[] showFields = null, string[] hideFields = null) {
    auto result = Json.emptyObject;
    
    if (showFields.length == 0 && hideFields.length == 0) {
      result["registerPath"] = this.registerPath;
      result["id"] = this.id.toString;
      result["name"] = this.name;
      result["display"] = this.display;
      result["versionNumber"] = this.versionNumber;
      result["createdOn"] = this.createdOn;
      result["createdBy"] = this.createdBy.toString;
      result["modifiedOn"] = this.modifiedOn;
      result["modifiedBy"] = this.modifiedBy.toString;
      result["lastAccessedOn"] = this.lastAccessedOn;
      result["lastAccessBy"] = this.lastAccessBy.toString;
      result["description"] = this.description;
      result["isLocked"] = this.isLocked;
      result["lockedOn"] = this.lockedOn;
      result["lockedBy"] = this.lockedBy.toString;
      result["isDeleted"] = this.isDeleted;
      result["deletedOn"] = this.deletedOn;
      result["deletedBy"] = this.deletedBy.toString;
      if (this.model) {
        if (this.model.id.isNull) result["model"] = this.model.name;
        else result["model"] = this.model.id.toString;
      }
      result["hasVersions"] = this.hasVersions;
      result["hasLanguages"] = this.hasLanguages;

      auto parameterValues = Json.emptyObject;
      foreach (kv; this.parameters.byKeyValue) {
        parameterValues[kv.key] = this.parameters[kv.value];                
      } 
      result["parameters"] = parameterValues;

      result["config"] = this.config;     
      result["versionNumber"] = this.versionNumber;
      result["versionDisplay"] = this.versionDisplay;
      result["versionMode"] = this.versionMode;
      result["versionOn"] = this.versionOn;
      result["versionBy"] = this.versionBy.toString;
      result["versionDescription"] = this.versionDescription;

/*       foreach(k; _attributes.byKey) {
        if (!hideFields.exist(k)) result[k] = _attributes[k].jsonValue;
      } */
      foreach(k; values.keys) {
        debug writeln("Value ", k, " = ",  this.values[k].toJson);
        result[k] = this.values[k].toJson;
      }
    }
    else if (showFields.length == 0 && hideFields.length > 0) {
      if (!hideFields.exist("registerPath")) result["registerPath"] = this.registerPath;
      if (!hideFields.exist("id")) result["id"] = this.id.toString;
      if (!hideFields.exist("name")) result["name"] = this.name;
      if (!hideFields.exist("display")) result["display"] = this.display;
      if (!hideFields.exist("versionNumber")) result["versionNumber"] = this.versionNumber;
      if (!hideFields.exist("createdOn")) result["createdOn"] = this.createdOn;
      if (!hideFields.exist("createdBy")) result["createdBy"] = this.createdBy.toString;
      if (!hideFields.exist("modifiedOn")) result["modifiedOn"] = this.modifiedOn;
      if (!hideFields.exist("modifiedBy")) result["modifiedBy"] = this.modifiedBy.toString;
      if (!hideFields.exist("lastAccessedOn")) result["lastAccessedOn"] = this.lastAccessedOn;
      if (!hideFields.exist("lastAccessBy")) result["lastAccessBy"] = this.lastAccessBy.toString;
      if (!hideFields.exist("description")) result["description"] = this.description;
      if (!hideFields.exist("isLocked")) result["isLocked"] = this.isLocked;
      if (!hideFields.exist("lockedOn")) result["lockedOn"] = this.lockedOn;
      if (!hideFields.exist("lockedBy")) result["lockedBy"] = this.lockedBy.toString;
      if (!hideFields.exist("isDeleted")) result["isDeleted"] = this.isDeleted;
      if (!hideFields.exist("deletedOn")) result["deletedOn"] = this.deletedOn;
      if (!hideFields.exist("deletedBy")) result["deletedBy"] = this.deletedBy.toString;
      if (!hideFields.exist("model")) {
        if (this.model) {
          if (this.model.id.isNull) result["model"] = this.model.name;
          else result["model"] = this.model.id.toString;
        }
      }
      if (!hideFields.exist("hasVersions")) result["hasVersions"] = this.hasVersions;
      if (!hideFields.exist("hasLanguages")) result["hasLanguages"] = this.hasLanguages;
      if (!hideFields.exist("parameters")) {       
        auto parameterValues = Json.emptyObject;
        foreach (kv; this.parameters.byKeyValue) {
          parameterValues[kv.key] = this.parameters[kv.value];                
        } 
        result["parameters"] = parameterValues;
      }
      if (!hideFields.exist("config")) result["config"] = this.config;     
      if (!hideFields.exist("versionNumber")) result["versionNumber"] = this.versionNumber;
      if (!hideFields.exist("versionDisplay")) result["versionDisplay"] = this.versionDisplay;
      if (!hideFields.exist("versionMode")) result["versionMode"] = this.versionMode;
      if (!hideFields.exist("versionOn")) result["versionOn"] = this.versionOn;
      if (!hideFields.exist("versionBy")) result["versionBy"] = this.versionBy.toString;
      if (!hideFields.exist("versionDescription")) result["versionDescription"] = this.versionDescription;
    }
    else {
      if ((showFields.exist("registerPath")) && (!hideFields.exist("registerPath"))) result["registerPath"] = this.registerPath;
      if ((showFields.exist("id")) && (!hideFields.exist("id"))) result["id"] = this.id.toString;
      if ((showFields.exist("name")) && (!hideFields.exist("name"))) result["name"] = this.name;
      if ((showFields.exist("display")) && (!hideFields.exist("display"))) result["display"] = this.display;
      if ((showFields.exist("versionNumber")) && (!hideFields.exist("versionNumber"))) result["versionNumber"] = this.versionNumber;
      if ((showFields.exist("createdOn")) && (!hideFields.exist("createdOn"))) result["createdOn"] = this.createdOn;
      if ((showFields.exist("createdBy")) && (!hideFields.exist("createdBy"))) result["createdBy"] = this.createdBy.toString;
      if ((showFields.exist("modifiedOn")) && (!hideFields.exist("modifiedOn"))) result["modifiedOn"] = this.modifiedOn;
      if ((showFields.exist("modifiedBy")) && (!hideFields.exist("modifiedBy"))) result["modifiedBy"] = this.modifiedBy.toString;
      if ((showFields.exist("lastAccessedOn")) && (!hideFields.exist("lastAccessedOn"))) result["lastAccessedOn"] = this.lastAccessedOn;
      if ((showFields.exist("lastAccessBy")) && (!hideFields.exist("lastAccessBy"))) result["lastAccessBy"] = this.lastAccessBy.toString;
      if ((showFields.exist("description")) && (!hideFields.exist("description"))) result["description"] = this.description;
      if ((showFields.exist("isLocked")) && (!hideFields.exist("isLocked"))) result["isLocked"] = this.isLocked;
      if ((showFields.exist("lockedOn")) && (!hideFields.exist("lockedOn"))) result["lockedOn"] = this.lockedOn;
      if ((showFields.exist("lockedBy")) && (!hideFields.exist("lockedBy"))) result["lockedBy"] = this.lockedBy.toString;
      if ((showFields.exist("isDeleted")) && (!hideFields.exist("isDeleted"))) result["isDeleted"] = this.isDeleted;
      if ((showFields.exist("deletedOn")) && (!hideFields.exist("deletedOn"))) result["deletedOn"] = this.deletedOn;
      if ((showFields.exist("deletedBy")) && (!hideFields.exist("deletedBy"))) result["deletedBy"] = this.deletedBy.toString;
      if ((showFields.exist("model")) && (!hideFields.exist("model"))) {
        if (this.model) {
          if (this.model.id.isNull) result["model"] = this.model.name;
          else result["model"] = this.model.id.toString;
        }
      }
      if ((showFields.exist("hasVersions")) && (!hideFields.exist("hasVersions"))) result["hasVersions"] = this.hasVersions;
      if ((showFields.exist("hasLanguages")) && (!hideFields.exist("hasLanguages"))) result["hasLanguages"] = this.hasLanguages;
      if ((showFields.exist("parameters")) && (!hideFields.exist("parameters"))) {       
        auto values = Json.emptyObject;
        foreach (kv; this.parameters.byKeyValue) {
          values[kv.key] = this.parameters[kv.value];                
        } 
        result["parameters"] = values;
      }
      if ((showFields.exist("config")) && (!hideFields.exist("config"))) result["config"] = this.config;
      if ((showFields.exist("versionNumber")) && (!hideFields.exist("versionNumber"))) result["versionNumber"] = this.versionNumber;
      if ((showFields.exist("versionDisplay")) && (!hideFields.exist("versionDisplay"))) result["versionDisplay"] = this.versionDisplay;
      if ((showFields.exist("versionOn")) && (!hideFields.exist("versionOn"))) result["versionOn"] = this.versionOn;
      if ((showFields.exist("versionMode")) && (!hideFields.exist("versionMode"))) result["versionMode"] = this.versionMode;
      if ((showFields.exist("versionBy")) && (!hideFields.exist("versionBy"))) result["versionBy"] = this.versionBy.toString;
      if ((showFields.exist("versionDescription")) && (!hideFields.exist("versionDescription"))) result["versionDescription"] = this.versionDescription;
    }

    if (showFields.length == 0) {
      /* foreach(k; _attributes.byKey) {
        if (!hideFields.exist(k)) result[k] = _attributes[k].jsonValue;
      } */
      this.values.toJson(result);
    }
    else {
/*       foreach(k; _attributes.byKey) {
        if ((showFields.exist(k)) && (!hideFields.exist(k))) result[k] = _attributes[k].jsonValue;
      } */
      this.values.toJson(result);
    }
    
    return result;
  }

  void load() {
    if (collection) fromJson(collection.findOne(id).toJson); }
  version(test_uim_entities) { unittest {
      // TODO: Add Test
    }
  }

  DEntity save() {
    if (collection) {
      if (collection.findOne(this.id)) collection.updateOne(this); 
      else collection.insertOne(this); 
    }
    
    return this;
  }
  version(test_uim_entities) { unittest {
      // TODO: Add Test
    }
  }

  void remove(bool allVersions = false) {
    if (collection)
      collection.removeMany(this, allVersions); }

}
auto Entity() { return new DEntity; }
auto Entity(Json json) { return new DEntity(json); }

version(test_uim_entities) { unittest {
  assert(Entity);

/*
  assert(Entity.id(randomuuid)
  assert(Entity.etag(totimestamp(now))
  assert(Entity.name(this.id.tostring) 
  assert(Entity.createdon(now)
  assert(Entity.lastaccessedon(createdon)
  assert(Entity.modifiedon(createdon)
  assert(Entity.hasversions(false)
  assert(Entity.haslanguages(false)
  assert(Entity.config(json.emptyobject)
  assert(Entity.values(values)
  assert(Entity.versionon(this.createdon)
  assert(Entity.versionnumber(1l) // allways starts with version 1
  assert(Entity.versionby(this.createdby); 

registerPath": return this.registerPath;
      case "id": return this.id.toString;
      case "etag": return to!string(this.etag);
      case "name": return this.name;
      case "display": return this.display;
      case "createdOn": return to!string(this.createdOn); 
      case "createdBy": return this.createdBy.toString; 
      case "modifiedOn": return to!string(this.modifiedOn); 
      case "modifiedBy": return this.modifiedBy.toString; 
      case "lastAccessedOn": return to!string(this.lastAccessedOn); 
      case "lastAccessBy": return this.lastAccessBy.toString; 
      case "description": return this.description;
      case "isLocked": return this.isLocked ? "true" : "false";
      case "lockedOn": return to!string(this.lockedOn);
      case "lockedBy": return this.lockedBy.toString; 
      case "isDeleted": return this.isDeleted ? "true" : "false";
      case "deletedOn": return to!string(this.deletedOn);
      case "deletedBy": return this.deletedBy.toString; 
      case "versionNumber": return to!string(this.versionNumber);
      case "versionDisplay": return this.versionDisplay;
      case "versionMode": return this.versionMode;
      case "versionOn": return to!string(this.versionOn);
      case "versionBy": return to!string(this.versionBy);
      case "versionDescription": return this.versionDescription;
      default:
        //if (key in attributes) { return attributes[key].stringValue; }
        if (values.hasValue(key)) { return values[key].toString; }
        return null;
    }      
*/
}}
