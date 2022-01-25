module uim.entities.attclasses.attclass;

@safe :
import uim.entities;

class DOOPAttclass : DOOPEntity {
  this() { super(); }
  this(Json newData) { this(); this.fromJson(newData); }
  this(UUID myId) { this(); this.id(myId); }
  this(string myName) { this(); this.name(myName); }
  this(UUID myId, string myName) { this(); this.id(myId).name(myName); }

  mixin(SProperty!("bool", "isNullable"));
  mixin(SProperty!("string", "valueType")); // Select the data type of the property.")); // 
  mixin(SProperty!("string", "keyType")); // Select the data type of the property.")); // 
  mixin(SProperty!("string", "dataType_display")); // ")); // 
  mixin(SProperty!("long", "defaultValueLong")); // Shows the default value of the property for a whole number data type.")); // 
  mixin(SProperty!("string", "defaultValueString")); // Shows the default value of the property for a string data type.")); // 
  //mixin(SProperty!("string", "defaultValueDecimal")); // Shows the default value of the property for a decimal data type.")); // 
  mixin(SProperty!("string", "baseDynamicPropertyId")); // Shows the property in the product family that this property is being inherited from.")); // 
  mixin(SProperty!("string", "overwrittenDynamicPropertyId")); // Shows the related overwritten property.")); // 
  mixin(SProperty!("string", "rootDynamicPropertyId")); // Shows the root property that this property is derived from.")); // 
  /* mixin(SProperty!("string", "minValueDecimal")); // Shows the minimum allowed value of the property for a decimal data type.")); // 
  mixin(SProperty!("string", "maxValueDecimal")); // Shows the maximum allowed value of the property for a decimal data type.")); //  */
  mixin(SProperty!("uint", "precision")); // Shows the allowed precision of the property for a whole number data type.")); // 
  mixin(SProperty!("string", "stateCode")); // Shows the state of the property.")); // 
  mixin(SProperty!("string", "stateCode_display")); // ")); // 
  mixin(SProperty!("string", "statusCode")); // Shows whether the property is active or inactive.")); // 
  mixin(SProperty!("string", "statusCode_display")); // ")); // 
  mixin(SProperty!("string", "regardingObjectId")); // Choose the product that the property is associated with.")); // 
  mixin(SProperty!("double", "defaultValueDouble")); // Shows the default value of the property for a double data type.")); // 
  mixin(SProperty!("double", "minValueDouble")); // Shows the minimum allowed value of the property for a double data type.")); // 
  mixin(SProperty!("double", "maxValueDouble")); // Shows the maximum allowed value of the property for a double data type.")); // 
  mixin(SProperty!("long", "minValueLong")); // Shows the minimum allowed value of the property for a whole number data type.")); // 
  mixin(SProperty!("long", "maxValueLong")); // Shows the maximum allowed value of the property for a whole number data type.")); // 
  mixin(SProperty!("bool", "isArray")); 
  mixin(SProperty!("bool", "isAssociativeArray")); 
  mixin(SProperty!("bool", "isReadOnly")); // Defines whether the attribute is read-only or if it can be edited.")); // 
  mixin(SProperty!("bool", "isHidden")); // Defines whether the attribute is hidden or shown.")); // 
  mixin(SProperty!("bool", "isRequired")); // Defines whether the attribute is mandatory.")); // 
  mixin(SProperty!("uint", "maxLengthString")); // Shows the maximum allowed length of the property for a string data type.")); // 
  mixin(SProperty!("string", "defaultValueOptionSet")); // Shows the default value of the property.

  mixin(SProperty!("UUID", "attclass")); // Super attclass.

 /*  O attclass(this O)(UUID myId, size_t myMajor = 0, size_t myMinor = 0) { 
    _attclass = OOPAttclass.id(myId).versionMajor(myMajor).versionMinor(myMinor);
    return cast(O)this; }

  O attclass(this O)(string myName, size_t myMajor = 0, size_t myMinor = 0) { 
    _attclass = OOPAttclass.name(myName).versionMajor(myMajor).versionMinor(myMinor);
    return cast(O)this; }

  O attclass(this O)(DOOPAttclass myAttclass) { 
    _attclass = myAttclass;     
    return cast(O)this; } */

  unittest {
    version(test_uim_entities) {    /// TODO
    }
  }

  // Create a new attribute based on this attclass - using attclass name 
  auto createAttribute() {
    return createAttribute(_name); }

  // Create a new attribute based on this attclass an a giving name 
  auto createAttribute(string aName) {
    DOOPAttribute result;
    switch(this.valueType) {
      case "bool": break; 
      case "byte": break; 
      case "ubyte": break; 
      case "short": break; 
      case "ushort": break; 
      case "int": break; 
      case "uint": break; 
      case "long": break; 
      case "ulong": break; 
      case "float": break; 
      case "double": break; 
      case "real": break; 
      case "ifloat": break; 
      case "idouble": break; 
      case "ireal": break; 
      case "cfloat": break; 
      case "cdouble": break; 
      case "creal": break; 
      case "char": break; 
      case "wchar": break; 
      case "dchar": break; 
      case "string": break; 
      case "uuid": break; 
      case "datetime": break; 
      default: break;
    }
    // result = new DOOPAttribute(aName);
/*     result.attclass(this);
    result.name(aName); */
    return result;
  }
  unittest {
    version(test_uim_entities) {    /// TODO
    }
  }


  override DOOPEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "attclass": this.attclass(UUID(v.get!string)); break;
        case "isNullable": this.isNullable(v.get!bool); break;
        case "valueType": this.valueType(v.get!string); break;
        case "keyType": this.keyType(v.get!string); break;
        case "dataType_display": this.dataType_display(v.get!string); break;
        case "defaultValueLong": this.defaultValueLong(v.get!long); break;
        case "defaultValueString": this.defaultValueString(v.get!string); break;
        case "baseDynamicPropertyId": this.baseDynamicPropertyId(v.get!string); break;
        case "overwrittenDynamicPropertyId": this.overwrittenDynamicPropertyId(v.get!string); break;
        case "rootDynamicPropertyId": this.rootDynamicPropertyId(v.get!string); break;
        case "precision": this.precision(v.get!int); break;
        case "stateCode": this.stateCode(v.get!string); break;
        case "stateCode_display": this.stateCode_display(v.get!string); break;
        case "statusCode": this.statusCode(v.get!string); break;
        case "statusCode_display": this.statusCode_display(v.get!string); break;
        case "regardingObjectId": this.regardingObjectId(v.get!string); break;
        case "defaultValueDouble": this.defaultValueDouble(v.get!double); break;
        case "minValueDouble": this.minValueDouble(v.get!double); break;
        case "maxValueDouble": this.maxValueDouble(v.get!double); break;
        case "minValueLong": this.minValueLong(v.get!long); break;
        case "maxValueLong": this.maxValueLong(v.get!long); break;
        case "isReadOnly": this.isReadOnly(v.get!bool); break;
        case "isHidden": this.isHidden(v.get!bool); break;
        case "isRequired": this.isRequired(v.get!bool); break;
        case "isArray": this.isArray(v.get!bool); break;
        case "isAssociativeArray": this.isAssociativeArray(v.get!bool); break;
        case "maxLengthString": this.maxLengthString(v.get!int); break;
        case "defaultValueOptionSet": this.defaultValueOptionSet(v.get!string); break;
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

    // Fields
    result["isNullable"] = this.isNullable;
    result["valueType"] = this.valueType;
    result["keyType"] = this.keyType;
    result["dataType_display"] = this.dataType_display; 
    result["defaultValueLong"] = this.defaultValueLong; 
    result["defaultValueString"] = this.defaultValueString; 
    result["baseDynamicPropertyId"] = this.baseDynamicPropertyId; 
    result["overwrittenDynamicPropertyId"] = this.overwrittenDynamicPropertyId; 
    result["rootDynamicPropertyId"] = this.rootDynamicPropertyId; 
    result["precision"] = this.precision; 
    result["stateCode"] = this.stateCode; 
    result["stateCode_display"] = this.stateCode_display; 
    result["statusCode"] = this.statusCode; 
    result["statusCode_display"] = this.statusCode_display; 
    result["regardingObjectId"] = this.regardingObjectId; 
    result["defaultValueDouble"] = this.defaultValueDouble; 
    result["minValueDouble"] = this.minValueDouble;
    result["maxValueDouble"] = this.maxValueDouble;
    result["minValueLong"] = this.minValueLong;
    result["maxValueLong"] = this.maxValueLong;
    result["isReadOnly"] = this.isReadOnly;
    result["isHidden"] = this.isHidden;
    result["isRequired"] = this.isRequired;
    result["isArray"] = this.isArray;
    result["isAssociativeArray"] = this.isAssociativeArray;
    result["maxLengthString"] = this.maxLengthString;
    result["defaultValueOptionSet"] = this.defaultValueOptionSet;

    result["attclass"] = this.attclass.toString;

    return result;
  }
  unittest {
    version(test_uim_entities) {    /// TODO
    }
  }
}
@safe auto OOPAttclass() { return new DOOPAttclass; }
@safe auto OOPAttclass(UUID id) { return new DOOPAttclass(id); }
@safe auto OOPAttclass(string name) { return new DOOPAttclass(name); }
@safe auto OOPAttclass(UUID id, string name) { return new DOOPAttclass(id, name); }
@safe auto OOPAttclass(Json json) { return new DOOPAttclass(json); }
@safe auto OOPAttclass(DETBCollection aCollection, Json json) { return (new DOOPAttclass(json)).collection(aCollection); }