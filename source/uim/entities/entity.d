/***********************************************************************************************
*	Copyright: © 2017-2020 UI Manufaktur UG
*	License: Subject to the terms of the MIT license, as written in the included LICENSE.txt file.
*	Authors: UI Manufaktur Team
*	Documentation [DE]: https://ui-manufaktur.com/docu/uim-oop/models/entities/entity_lang
************************************************************************************************/
module uim.entities.entity;

@safe:
import uim.entities;

class DOOPEntity {
  static namespace = moduleName!DOOPEntity;

// Constructors
  this() {
    this
    .id(randomUUID)
    .etag(toTimestamp(now))
    .name(this.id.toString) 
    .createdOn(now)
    .modifiedOn(createdOn)
    .lastAccessedOn(createdOn)
    .hasVersions(false)
    .hasLanguages(false)
    .versionOn(this.createdOn)
    .versionNumber(1L)
    .versionBy(this.createdBy)
    .config(Json.emptyObject); }

  this(DOOPModel myModel) { 
    this();
    this.model(myModel); }

  this(UUID myId) { 
    this();     
    this.id(myId).name(this.id.toString); }

  this(string myName) { 
    this();     
    this.name(myName); }

  this(UUID myId, string myName) { 
    this();
    this.id(myId).name(myName); }

  this(Json aJson) { 
    this();    
    if (aJson != Json(null)) this.fromJson(aJson); }

  string entityClass() { return "entity"; }
  string entityClasses() { return "entities"; }
  string entityPath() { return "entities"; }

  mixin(SProperty!("string", "pool"));
  mixin(SProperty!("long", "etag"));
  O etag(this O)(string newValue) { 
    this.etag(to!long(newValue)); 
    return cast(O)this; }

  mixin(SProperty!("DETBCollection", "collection"));
  mixin(SProperty!("string", "siteName"));
  mixin(SProperty!("DOOPModel", "model"));
  mixin(SProperty!("string[string]", "parameters"));
  mixin(SProperty!("Json", "config"));

/// Versioning
  ///	Date and time when the entity was versioned.	
  mixin(SProperty!("long", "versionOn"));
  O versionOn(this O)(SysTime aTime) {
    this.versionOn(toTimeStamp(aTime));
    return cast(O)this;
  }
  O versionOn(this O)(string aTime) {
    this.versionOn(to!long(aTime));
    return cast(O)this;
  }
  
  ///	Unique identifier of the user who versioned the entity.
  mixin(SProperty!("UUID", "versionBy"));
  O versionBy(this O)(string anUuid) { 
    this.versionBy(UUID(anUuid)); 
    return cast(O)this;
  }

  mixin(SProperty!("string", "versionDescription"));
  mixin(SProperty!("string", "versionDisplay"));
  mixin(SProperty!("string", "versionMode"));

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

  private DOOPAttribute[string] _attributes;  
  auto attributes() { return _attributes; }
  O attributes(this O, T)(T[string] addAttributes) {
    foreach(kv; addAttributes.byKeyValue) this.attribute(kv.key, cast(DOOPAttribute)kv.value);
    return cast(O)this;
  }
  O attributes(this O)(STRINGAA values) {
    foreach(kv; values.byKeyValue) this.attribute(kv.key, kv.value);
    return cast(O)this;
  }
  O attributes(this O)(Json[string] values) {
    foreach(kv; values.byKeyValue) this.attribute(k, v);
    return cast(O)this;
  }

  O attribute(this O)(string name, string type) {
    if (type.strip.indexOf("{") == 0) {
      Json json = parseJsonString(type);
      this.attribute(name, json);
    }
    else {
      switch(type.toLower) {
        case "bool": _attributes[name] = OOPAttributeBool; break;
        case "long": _attributes[name] = OOPAttributeLong; break;
        case "double": _attributes[name] = OOPAttributeDouble; break;
        case "string": _attributes[name] = OOPAttributeString; break;
        case "userid": _attributes[name] = OOPAttributeUserId; break;
        case "uuid": _attributes[name] = OOPAttributeUUID; break;
        case "array": _attributes[name] = OOPAttributeArray; break;
        case "object": _attributes[name] = OOPAttributeObject; break;
        default:
          _attributes[name] = OOPAttributeString; break;  
      }}
    return cast(O)this;
  }
  O attribute(this O)(string name, Json json) {
    switch(json["datatype"].get!string.toLower) {
        case "bool": _attributes[name] = OOPAttributeBool.config(json); break;
        case "long": _attributes[name] = OOPAttributeLong.config(json); break;
        case "double": _attributes[name] = OOPAttributeDouble.config(json); break;
        case "string": _attributes[name] = OOPAttributeString.config(json); break;
        case "userid": _attributes[name] = OOPAttributeUserId.config(json); break;
        case "uuid": _attributes[name] = OOPAttributeUUID.config(json); break;
        case "array": _attributes[name] = OOPAttributeArray.config(json); break;
        case "object": _attributes[name] = OOPAttributeObject.config(json); break;
      default:
        _attributes[name] = OOPAttributeString.config(json); break;  
    }
    return cast(O)this;
  }
  O attribute(this O)(string name, DOOPAttribute newAttribute) {
    _attributes[name] = newAttribute;  
    return cast(O)this; }
  // Every entity has a unique id as a primary key
  mixin(SProperty!("UUID", "id"));
  O id(this O)(string anUuid) { this.id(UUID(anUuid)); return cast(O)this; }
  unittest {
    version(uim_entities) {
      auto id1 = randomUUID;
      assert(OOPEntity.id(id1).id == id1);
      auto id2 = randomUUID;
      assert(OOPEntity.id(id1).id(id2).id == id2);
    }
  }

  // Every entity has a unique name - not primarykey only for human search
  string _name;
  O name(this O)(string  newName) { _name = newName.strip.toLower.replace(" ", "_"); return cast(O)this; }
  string name() { return _name; }
  unittest {
    version(uim_entities) {
      assert(OOPEntity.name("name1").name == "name1");
      assert(OOPEntity.name("name1").name("name2").name == "name2");
      assert(OOPEntity.name("name name").name == "name_name");
    }
  }

  // Display of entity 
  mixin(SProperty!("string", "display"));

  /// Date and time when the entity was created.
  mixin(SProperty!("long", "createdOn"));
  O createdOn(this O)(SysTime aTime) {
    this.createdOn(toTimestamp(aTime));
    return cast(O)this;
  }
  O createdOn(this O)(string aTime) {
    this.createdOn(to!long(aTime));
    return cast(O)this;
  }
  unittest {
    version(uim_entities) {
/*     auto now1 = now; auto now2 = now;
    assert(OOPEntity.createdOn(now1).createdOn == now1);
    assert(OOPEntity.createdOn(now1).createdOn(now2).createdOn == now2);
 */  }
  }

  ///   createdBy	Unique identifier of the user who created the entity.	
  mixin(SProperty!("UUID", "createdBy"));
  O createdBy(this O)(string anUuid) { 
    if (anUuid.isUUID) this.createdBy(UUID(anUuid)); 
    else _createdBy = NULLUUID;
    return cast(O)this; }

  ///	Date and time when the entity was modified.	
  mixin(SProperty!("long", "modifiedOn"));
  O modifiedOn(this O)(SysTime aTime) {
    this.modifiedOn(toTimestamp(aTime));
    return cast(O)this;
  }
  O modifiedOn(this O)(string aTime) {
    this.modifiedOn(to!long(aTime));
    return cast(O)this;
  }

  ///	Unique identifier of the user who modified the entity.
  mixin(SProperty!("UUID", "modifiedBy"));
  O modifiedBy(this O)(string anUuid) { 
    if (anUuid.isUUID) this.modifiedBy(UUID(anUuid)); 
    else _modifiedBy = NULLUUID;
    return cast(O)this; }

  /// Date and time when the entity was created.
  mixin(SProperty!("long", "lastAccessedOn"));
  O lastAccessedOn(this O)(SysTime aTime) {
    this.lastAccessedOn(toTimestamp(aTime));
    return cast(O)this;
  }
  O lastAccessedOn(this O)(string aTime) {
    this.lastAccessedOn(to!long(aTime));
    return cast(O)this;
  }
  unittest {
    version(uim_entities) {
/*     auto now1 = now; auto now2 = now;
    assert(OOPEntity.createdOn(now1).createdOn == now1);
    assert(OOPEntity.createdOn(now1).createdOn(now2).createdOn == now2);
 */  }
  }

  ///   lastAccessBy	Unique identifier of the user who accessed the entity.	
  mixin(SProperty!("UUID", "lastAccessBy"));
  O lastAccessBy(this O)(string anUuid) { 
    if (anUuid.isUUID) this.lastAccessBy(UUID(anUuid)); 
    else _lastAccessBy = NULLUUID;
    return cast(O)this; }

  ///	Description about the entity and more
  mixin(SProperty!("string", "description"));

  ///	Entity has only one version. Version handling starts with EntityVersion	
  mixin(SProperty!("bool", "hasVersions"));
  O hasVersions(this O)(string newValue) {
    this.hasVersions(newValue == "true");
    return cast(O)this;
  }
  ///	entity has only one language. Language handling starts with EntityLanguage	
  mixin(SProperty!("bool", "hasLanguages"));
  O hasLanguages(this O)(string newValue) {
    this.hasLanguages(newValue == "true");
    return cast(O)this; }

  ///	Date and time when the entity is locked.	
  mixin(SProperty!("bool", "isLocked"));
  O isLocked(this O)(string newValue) {
    this.isLocked(newValue == "true");
    return cast(O)this; }
  ///	Date and time when the entity was locked.	
  mixin(SProperty!("long", "lockedOn"));
  O lockedOn(this O)(SysTime aTime) {
    this.lockedOn(toTimestamp(aTime));
    return cast(O)this; }
  O lockedOn(this O)(string aTime) {
    this.lockedOn(to!long(aTime));
    return cast(O)this; }

  ///	Unique identifier of the user who modified the entity.
  mixin(SProperty!("UUID", "lockedBy"));
  O lockedBy(this O)(string anUuid) { 
    this.lockedBy(UUID(anUuid)); 
    return cast(O)this; }

  ///	Date and time when the entity is deleted.	
  mixin(SProperty!("bool", "isDeleted"));
  O isDeleted(this O)(string newValue) {
    this.isDeleted(newValue == "true");
    return cast(O)this; }
  
  ///	Date and time when the entity was locked.	
  mixin(SProperty!("long", "deletedOn"));
  O deletedOn(this O)(SysTime aTime) {
    this.deletedOn(toTimestamp(aTime));
    return cast(O)this; }
  O deletedOn(this O)(string aTime) {
    this.deletedOn(to!long(aTime));
    return cast(O)this; }

  ///	Unique identifier of the user who deleted the entity.
  mixin(SProperty!("UUID", "deletedBy"));
  O deletedBy(this O)(string anUuid) { 
    this.deletedBy(UUID(anUuid)); 
    return cast(O)this; }

  mixin(SProperty!("long", "versionNumber"));
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

  // Read entity from HttpRequest
  DOOPEntity fromRequest(STRINGAA reqParameters) {
    if ("entity_id" in reqParameters) this.id(UUID(reqParameters["entity_id"]));
    if ("entity_etag" in reqParameters) this.etag(reqParameters["entity_etag"]);
    if ("entity_name" in reqParameters) this.name(reqParameters["entity_name"]);
    if ("entity_display" in reqParameters) this.display(reqParameters["entity_display"]);
    if ("entity_versionNumber" in reqParameters) this.versionNumber(reqParameters["entity_versionNumber"]);
    if ("entity_createdOn" in reqParameters) this.createdOn(reqParameters["entity_createdOn"]);
    if ("entity_createdBy" in reqParameters) this.createdBy(reqParameters["entity_createdBy"]);
    if ("entity_modifiedOn" in reqParameters) this.modifiedOn(reqParameters["entity_modifiedOn"]);
    if ("entity_modifiedBy" in reqParameters) this.modifiedBy(reqParameters["entity_modifiedBy"]);
    if ("entity_lastAccessedOn" in reqParameters) this.lastAccessedOn(reqParameters["entity_lastAccessedOn"]);
    if ("entity_lastAccessBy" in reqParameters) this.lastAccessBy(reqParameters["entity_lastAccessBy"]);
    if ("entity_isLocked" in reqParameters) this.isLocked(reqParameters["entity_isLocked"]);
    if ("entity_lockedOn" in reqParameters) this.lockedOn(reqParameters["entity_lockedOn"]);
    if ("entity_lockedBy" in reqParameters) this.lockedBy(reqParameters["entity_lockedBy"]);
    if ("entity_isDeleted" in reqParameters) this.isDeleted(reqParameters["entity_isDeleted"]);
    if ("entity_deletedOn" in reqParameters) this.deletedOn(reqParameters["entity_deletedOn"]);
    if ("entity_deletedBy" in reqParameters) this.deletedBy(reqParameters["entity_deletedBy"]);
    if ("entity_description" in reqParameters) this.description(reqParameters["entity_description"]);
    if ("entity_versionNumber" in reqParameters) this.versionNumber(reqParameters["entity_versionNumber"]);
    if ("entity_versionDisplay" in reqParameters) this.versionDisplay(reqParameters["entity_versionDisplay"]);
    if ("entity_versionMode" in reqParameters) this.versionMode(reqParameters["entity_versionMode"]);
    if ("entity_versionOn" in reqParameters) this.versionOn(reqParameters["entity_versionOn"]);
    if ("entity_versionBy" in reqParameters) this.versionBy(reqParameters["entity_versionBy"]);
    if ("entity_versionDescription" in reqParameters) this.versionDescription(reqParameters["entity_versionDescription"]);
    foreach (name, attribute; _attributes) {
      if ("entity_"~name in reqParameters) attribute.fromString(reqParameters["entity_"~name]);    
    }

    return this;
  }

  // Converts entity property to string, which is HTML compatible
  string opIndex(string key) {
    switch(key) {
      case "entityPath": return this.entityPath;
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
        if (key in attributes) return attributes[key].toString; 
        return null;
    }      
  }

  DOOPEntity opIndexAssign(string value, string key) {
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
        if (key in attributes) attributes[key].fromString(value); 
        break;
    }      
    return this;
  }

  // Read HTML value and set entity value
  DOOPEntity opIndexAssign(UUID value, string key) {
    switch(key) {
      case "id": this.id(value); break;
      case "createdBy": this.createdBy(value); break;
      case "modifiedBy": this.modifiedBy(value); break; 
      case "lastAccessBy": this.lastAccessBy(value); break; 
      case "lockedBy": this.lockedBy(value); break; 
      case "deletedBy": this.deletedBy(value); break; 
      case "versionBy": this.versionBy(value); break;
      default:
        if (key in attributes) {
          if (auto att = cast(DOOPAttributeUUID)attributes[key]) att.value(value); 
        } 
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
        if (key in attributes) {
          if (auto att = cast(DOOPAttributeLong)attributes[key]) att.value(value); 
        } 
        break;
    }      
  }

  void opIndexAssign(bool value, string key) {
    switch(key) {
      case "isLocked": this.isLocked(value); break;
      case "isDeleted": this.isDeleted(value); break;
      case "hasVersions": this.hasVersions(value); break;      
      default:
        if (key in attributes) {
          if (auto att = cast(DOOPAttributeBoolean)attributes[key]) att.value(value); 
        } 
        break;
    }      
  }

  Bson toBson() { return Bson(toJson); }

  DOOPEntity fromJson(Json aJson) {
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
          if (k in _attributes) {
            debug writeln("Found ", k);
            _attributes[k].fromJson(v); 
          }
          break;
      }            
    }
    return this;
  }

  Json toJson(string[] showFields = null, string[] hideFields = null) {
    auto result = Json.emptyObject;
    
    if (showFields.length == 0) {
      if (!hideFields.exist("entityPath")) result["entityPath"] = this.entityPath;
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
        auto values = Json.emptyObject;
        foreach (kv; this.parameters.byKeyValue) {
          values[kv.key] = this.parameters[kv.value];                
        } 
        result["parameters"] = values;
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
      if ((showFields.exist("entityPath")) && (!hideFields.exist("entityPath"))) result["entityPath"] = this.entityPath;
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
      foreach(k; _attributes.byKey()) {
        if (!hideFields.exist(k)) result[k] = _attributes[k].toJson;
      }
    }
    else {
      foreach(k; _attributes.byKey()) {
        if ((showFields.exist(k)) && (!hideFields.exist(k))) result[k] = _attributes[k].toJson;
      }
    }
    
    return result;
  }

  void load() {
    if (collection) fromJson(collection.findOne(id).toJson); }
  unittest {
    version(uim_entities) {
      // TODO: Add Test
    }
  }
  void save() {
    if (collection) {
      if (collection.findOne(this.id)) collection.updateOne(this); 
      else collection.insertOne(this); }}
  unittest {
    version(uim_entities) {
      // TODO: Add Test
    }
  }

  void remove(bool allVersions = false) {
    if (collection)
      collection.removeMany(this, allVersions); }

}
auto OOPEntity() { return new DOOPEntity; }
auto OOPEntity(Json json) { return new DOOPEntity(json); }

unittest {
  version(uim_entities) {
  }  
  writeln("Entity Namespace = ", DOOPEntity.namespace);
}
