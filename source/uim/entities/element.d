/*********************************************************************************************************
*	Copyright: © 2017-2022, UI Manufaktur UG, Since 2022 Ozan Nurettin Süel (Sicherheitsschmiede)          *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: UI Manufaktur Team, Ozan Nurettin Süel (Sicherheitsschmiede)                                  *
**********************************************************************************************************/
module uim.entities.element;

@safe:
import uim.entities;

class DOOPElement {
  static namespace = moduleName!DOOPElement;

  // Constructors
  this() { initialize; }

  this(string myName) { 
    this().name(myName); }

  this(Json aJson) { 
    this();    
    if (aJson != Json(null)) this.fromJson(aJson); }

  void initialize() {
    this
    .name;
  }

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
      assert(OOPEntity.name("name1").name == "name1");
      assert(OOPEntity.name("name1").name("name2").name == "name2");
      assert(OOPEntity.name("name name").name == "name_name");
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
    assert(OOPEntity.createdOn(now1).createdOn == now1);
    assert(OOPEntity.createdOn(now1).createdOn(now2).createdOn == now2);
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
    assert(OOPEntity.createdOn(now1).createdOn == now1);
    assert(OOPEntity.createdOn(now1).createdOn(now2).createdOn == now2);
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
  DOOPElement fromStringAA(STRINGAA reqParameters) {
    foreach(k, v; reqParameters) this[k] = v; 
    return this;
  }

  DOOPElement fromRequest(STRINGAA requestValues) {
    debug writeln("fromRequest...", requestValues);
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
      case "name": return this.name;
      case "display": return this.display;
      case "createdOn": return to!string(this.createdOn); 
      case "description": return this.description;
      default:
        if (values.hasValue(key)) { return values[key].toString; }
        return null;
    }      
  }

  DOOPElement opIndexAssign(string value, string key) {
    switch(key) {
      case "name": this.name(value); break;
      case "display": this.display(value); break;
      case "description": this.description(value); break;
      default:
        values[key] = value;
        break;
    }      
    return this;
  }

  // Read HTML value and set entity value
  DOOPElement opIndexAssign(UUID value, string key) {
    switch(key) {
      default:
        values[key] = value;
        break;
    }      
    return this;
  }

  void opIndexAssign(long value, string key) {
    switch(key) {
      default:
        values[key] = value;
        break;
    }      
  } 

  void opIndexAssign(bool value, string key) {
    switch(key) {
      default:
        values[key] = value;
        break;
    }      
  }

  // Set field(key) if type Entity
  void opIndexAssign(DOOPElement value, string key) {
    switch(key) {
      default:
        break;
    }      
  }

  DOOPElement create() { return new DOOPElement; }
  DOOPElement create(Json data) { return create.fromJson(data); }

  DOOPElement clone() { return create.fromJson(toJson); }
  DOOPElement clone(Json data) { return create.fromJson(toJson).fromJson(data); }
  
  DOOPElement copyTo(DOOPElement targetOfCopy) {
    return targetOfCopy ? targetOfCopy.fromJson(this.toJson) : targetOfCopy; }
  DOOPElement copyFrom(DOOPElement targetOfCopy) {
    return targetOfCopy ? fromJson(targetOfCopy.toJson) : this;
  }

  Bson toBson() { return Bson(toJson); }

  DOOPElement fromJson(Json aJson) {
    if (aJson == Json(null)) return this;
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "name": this.name(v.get!string); break;
        case "display": this.display(v.get!string); break;
        case "parameters": 
          STRINGAA values;
          foreach (kv; v.byKeyValue) {
            values[kv.key] = kv.value.get!string;
          }
          this.parameters(values);
          break;
        default: 
          this.values[k].value(v);
          break;
      }            
    }
    return this;
  }

  Json toJson(string[] showFields = null, string[] hideFields = null) {
    auto result = Json.emptyObject;
    
    if (showFields.length == 0 && hideFields.length == 0) {
      result["id"] = this.id.toString;
      result["name"] = this.name;
      result["display"] = this.display;
      result["description"] = this.description;

      auto parameterValues = Json.emptyObject;
      foreach (kv; this.parameters.byKeyValue) {
        parameterValues[kv.key] = this.parameters[kv.value];                
      } 
      result["parameters"] = parameterValues;
      foreach(k; values.keys) {
        debug writeln("Value ", k, " = ",  this.values[k].toJson);
        result[k] = this.values[k].toJson;
      }
    }
    else if (showFields.length == 0 && hideFields.length > 0) {
      if (!hideFields.exist("name")) result["name"] = this.name;
      if (!hideFields.exist("display")) result["display"] = this.display;

      if (!hideFields.exist("description")) result["description"] = this.description;

      if (!hideFields.exist("model")) {
        if (this.model) {
          if (this.model.id.isNull) result["model"] = this.model.name;
          else result["model"] = this.model.id.toString;
        }
      }
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
  version(test_uim_entities) {
    unittest {
      // TODO: Add Test
    }
  }

  DOOPElement save() {
    if (collection) {
      if (collection.findOne(this.id)) collection.updateOne(this); 
      else collection.insertOne(this); 
    }
    
    return this;
  }
  version(test_uim_entities) {
    unittest {
      // TODO: Add Test
    }
  }

  void remove(bool allVersions = false) {
    if (collection)
      collection.removeMany(this, allVersions); }

}
auto OOPEntity() { return new DOOPElement; }
auto OOPEntity(Json json) { return new DOOPElement(json); }


