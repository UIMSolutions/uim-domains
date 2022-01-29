module uim.entities.attributes.attribute;

@safe:
import uim.entities;

class DOOPAttribute : IRegistrable {
  this() { initialize; }
  this(Json myValue) { 
    this().value(myValue); 
  }
  this(string myValue) { 
    this().value(myValue);
  }

  void initialize() {}

  protected string _registerPath;
  void registerPath(string path) { _registerPath = path; }
  string registerPath() { return _registerPath; }

  void value(Json newValue) {} // Interface for data
  void value(string newValue) {} // Interface for data 

  mixin(OProperty!("Json", "config"));
  /// Attclass from which it inherits

  mixin(OProperty!("DOOPAttributeClass", "attributeClass"));
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  mixin(OProperty!("STRINGAA", "descriptions"));
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  mixin(OProperty!("UUID", "ownerId"));
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}


  mixin(OProperty!("string", "name"));
  version(test_uim_entities) {
    unittest {
      assert(OOPAttribute.name == "OOPAttribute");
  }}

  mixin(OProperty!("string", "path"));
  version(test_uim_entities) {
    unittest {
    // TODO
  }}

  mixin(OProperty!("string", "className"));
  version(test_uim_entities) {
    unittest {
      // TODO
  }}

  mixin(OProperty!("bool", "isNullable"));
  version(test_uim_entities) {
    unittest {
      /* assert(!OOPAttribute.isNullable); 
      assert(OOPAttribute.isNullable(true).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(false).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(false).isNull); 
      assert(!OOPAttribute.isNullable(false).isNull(false).isNull);  */
      }}

  string type() { return ""; }

  bool booleanValue() { return false; } // default
  bool boolValue() { return booleanValue; } // shorter

  int integerValue() { return false; } // default
  int intValue() { return integerValue; } // shorter

  string stringValue() { return ""; } // default
  string strValue() { return stringValue; } // shorter

  Json jsonValue() { return Json(null); }

  mixin(OProperty!("bool", "isByte"));
  mixin(OProperty!("bool", "isBoolean"));
  mixin(OProperty!("bool", "isFloatingPoint"));
  mixin(OProperty!("bool", "isBig"));
  mixin(OProperty!("bool", "isCharacter"));
  mixin(OProperty!("bool", "isInteger"));
  mixin(OProperty!("bool", "isString"));
  mixin(OProperty!("bool", "isArray"));
  mixin(OProperty!("bool", "isEntity"));

  protected bool _isNull;
  bool isNull() { return _isNull; }
  O isNull(this O)(bool aValue) {
    if (isNullable) _isNull = aValue;
    return cast(O)this; }
  version(test_uim_entities) {
    unittest {
      // assert(!OOPAttribute.isNull); 
      // isNullable = false
/*       assert(!OOPAttribute.isNull(true).isNull); 
      assert(!OOPAttribute.isNull(false).isNull); 
      assert(!OOPAttribute.isNull(true).isNull(false).isNull); 
      // isNullable = true
      assert(OOPAttribute.isNullable(true).isNull(true).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(false).isNull); 
      assert(!OOPAttribute.isNullable(true).isNull(true).isNull(false).isNull);  */
      }}

  O set(this O)(Json aValue) {
    fromJson(aValue);
    return cast(O)this;
  }
  O set(this O)(string aValue) {
    fromString(aValue);
    return cast(O)this;
  }

  T get(T:Json)() {
    return toJson(aValue);
  }
  T get(T:string)() {
    return toString(aValue);
  }

  // Write attribute to Json
  Json toJson() {
    Json json = Json.emptyObject;

    if (name) json["name"] = name;
    if (path) json["path"] = path;

    json["isArray"] = isArray;
    json["isBig"] = isBig;
    json["isByte"]  = isByte;
    json["isBoolean"] = isBoolean;
    json["isCharacter"] = isCharacter;
    json["isEntity"] = isEntity;
    json["isFloatingPoint"] = isFloatingPoint;
    json["isInteger"] = isInteger;
    json["isString"] = isString;

    return json;    
  }
  
  // Read attribute from Json
  DOOPAttribute fromJson(Json newJson) {
    if (newJson == Json(null)) return this;
    
    foreach (keyvalue; newJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "isArray": this.isArray(v.get!bool); break;
        case "isBig": this.isBig(v.get!bool); break;
        case "isByte": this.isByte(v.get!bool); break;
        case "isBoolean": this.isBoolean(v.get!bool); break;
        case "isCharacter": this.isCharacter(v.get!bool); break;
        case "isEntity": this.isEntity(v.get!bool); break;
        case "isFloatingPoint": this.isFloatingPoint(v.get!bool); break;
        case "isInteger": this.isInteger(v.get!bool); break;
        case "isString": this.isString(v.get!bool); break;
        case "name": this.name(v.get!string); break;
        case "path": this.path(v.get!string); break;
        default: break;
      }
    }

    return this; 
  }

  DOOPAttribute clone() { return new DOOPAttribute; }
  DOOPAttribute copy() { return copy(clone); }
  DOOPAttribute copy(DOOPAttribute targetOfCopy) {
    if (targetOfCopy) {
      targetOfCopy.fromJson(this.toJson);
    }
    return targetOfCopy;
  }
  override string toString() { return "DOOPAttribute"; }

  O fromString(this O)(string newValue) {
    this.value(newValue);
    return cast(O)this; }
}

