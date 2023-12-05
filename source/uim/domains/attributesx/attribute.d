module uim.domains.attributes.xattribute;

@safe:
import uim.domains;

// deprecated
class DXAttribute : IRegistrable {
  this() { initialize; }
  this(Json myValue) { 
    this().value(myValue); 
  }
  this(string myValue) { 
    this().value(myValue);
  }

  void initialize() {
    this
      .name = "XAttribute";
  }

  protected string _registerPath;
  DXAttribute registerPath(string path) { _registerPath = path; return this; }
  string registerPath() { return _registerPath; }

  DXAttribute value(Json newValue) { return this; } // Interface for data
  DXAttribute value(string newValue) { return this; } // Interface for data 

  mixin(OProperty!("Json", "config"));
  /// Attclass from which it inherits

  mixin(OProperty!("DAttribute", "attribute"));
  version(test_uim_domains) {
    unittest {
      // TODO Add tests
      }}

  mixin(OProperty!("STRINGAA", "descriptions"));
  version(test_uim_domains) {
    unittest {
      // TODO Add tests
      }}

  mixin(OProperty!("UUID", "ownerId"));
  version(test_uim_domains) {
    unittest {
      // TODO Add tests
      }}

  mixin(OProperty!("string", "name"));
  version(test_uim_domains) {
    unittest {
      assert(XAttribute.name == "XAttribute");
  }}

  mixin(OProperty!("string", "path"));
  version(test_uim_domains) {
    unittest {
    // TODO
  }}

  mixin(OProperty!("string", "className"));
  version(test_uim_domains) {
    unittest {
      // TODO
  }}

  mixin(OProperty!("bool", "isNullable"));
  version(test_uim_domains) {
    unittest {
      /* assert(!XAttribute.isNullable); 
      assert(XAttribute.isNullable(true).isNull(true).isNull); 
      assert(!XAttribute.isNullable(false).isNull(true).isNull); 
      assert(!XAttribute.isNullable(true).isNull(false).isNull); 
      assert(!XAttribute.isNullable(false).isNull(false).isNull);  */
      }}

  string type() { return ""; }

  bool booleanValue() { 
      return false; 
    } // default
  bool boolValue() { return booleanValue; } // shorter

  int integerValue() { 
      return false; 
    } // default
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
  version(test_uim_domains) {
    unittest {
      // assert(!XAttribute.isNull); 
      // isNullable = false
/*       assert(!XAttribute.isNull(true).isNull); 
      assert(!XAttribute.isNull(false).isNull); 
      assert(!XAttribute.isNull(true).isNull(false).isNull); 
      // isNullable = true
      assert(XAttribute.isNullable(true).isNull(true).isNull); 
      assert(!XAttribute.isNullable(true).isNull(false).isNull); 
      assert(!XAttribute.isNullable(true).isNull(true).isNull(false).isNull);  */
      }}

/*   O set(this O)(Json aValue) {
    value(aValue);
    return cast(O)this;
  }
  O set(this O)(string aValue) {
    value(aValue);
    return cast(O)this;
  }

  T get(T:Json)() {
    return jsonValue(aValue);
  }
  T get(T:string)() {
    return toString(aValue);
  } */

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
  DXAttribute fromJson(Json newJson) {
    final switch (newJson.type) {
			case Json.Type.undefined:
			case Json.Type.null_: 
			case Json.Type.bool_:
			case Json.Type.int_:
			case Json.Type.bigInt:
			case Json.Type.float_:
			case Json.Type.string:
			case Json.Type.array: return this.value(newJson);
      
			case Json.Type.object:
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
  }

  DXAttribute create() { return new DXAttribute; }
  DXAttribute create(Json data) { return create.fromJson(data); }

  DXAttribute clone() { return create.fromJson(toJson); }
  DXAttribute clone(Json data) { return create.fromJson(toJson).fromJson(data); }
  
  DXAttribute copyTo(DXAttribute targetOfCopy) {
    return targetOfCopy ? targetOfCopy.fromJson(this.toJson) : targetOfCopy; }
  DXAttribute copyFrom(DXAttribute targetOfCopy) {
    return targetOfCopy ? fromJson(targetOfCopy.toJson) : this;
  }

  override string toString() { return "DXAttribute"; }

  O fromString(this O)(string newValue) {
    this.value(newValue);
    return cast(O)this; }
}
auto XAttribute() { return new DXAttribute; }

