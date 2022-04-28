module uim.entities.attributeclasses.attributeclass;

@safe :
import uim.entities;

class DAttributeClass : DOOPEntity {
  mixin(AttributeClassThis!("OOPAttributeClass"));

  mixin(OProperty!("string[]", "dataFormats")); // Select the data type of the property.")); // 
  bool hasDataFormat(string dataFormatName) {
    foreach(df; dataFormats) if (df == dataFormatName) return true;
    return false;
  }
  O addDataFormats(this O)(string[] newDataFormats) {
    foreach(df; newDataFormats) {
      if (!hasDataFormat(df)) _dataFormats ~= df;
    }
    return cast(O)this;
  }

  mixin(OProperty!("bool", "isNullable"));
  mixin(OProperty!("string", "valueType")); // Select the data type of the property.")); // 
  mixin(OProperty!("string", "keyType")); // Select the data type of the property.")); // 
  mixin(OProperty!("string", "dataType_display")); // ")); // 
  mixin(OProperty!("long", "defaultValueLong")); // Shows the default value of the property for a whole number data type.")); // 
  mixin(OProperty!("string", "defaultValueString")); // Shows the default value of the property for a string data type.")); // 
  //mixin(OProperty!("string", "defaultValueDecimal")); // Shows the default value of the property for a decimal data type.")); // 
  mixin(OProperty!("string", "baseDynamicPropertyId")); // Shows the property in the product family that this property is being inherited from.")); // 
  mixin(OProperty!("string", "overwrittenDynamicPropertyId")); // Shows the related overwritten property.")); // 
  mixin(OProperty!("string", "rootDynamicPropertyId")); // Shows the root property that this property is derived from.")); // 
  /* mixin(OProperty!("string", "minValueDecimal")); // Shows the minimum allowed value of the property for a decimal data type.")); // 
  mixin(OProperty!("string", "maxValueDecimal")); // Shows the maximum allowed value of the property for a decimal data type.")); //  */
  mixin(OProperty!("uint", "precision")); // Shows the allowed precision of the property for a whole number data type.")); // 
  mixin(OProperty!("string", "stateCode")); // Shows the state of the property.")); // 
  mixin(OProperty!("string", "stateCode_display")); // ")); // 
  mixin(OProperty!("string", "statusCode")); // Shows whether the property is active or inactive.")); // 
  mixin(OProperty!("string", "statusCode_display")); // ")); // 
  mixin(OProperty!("string", "regardingObjectId")); // Choose the product that the property is associated with.")); // 
  mixin(OProperty!("double", "defaultValueDouble")); // Shows the default value of the property for a double data type.")); // 
  mixin(OProperty!("double", "minValueDouble")); // Shows the minimum allowed value of the property for a double data type.")); // 
  mixin(OProperty!("double", "maxValueDouble")); // Shows the maximum allowed value of the property for a double data type.")); // 
  mixin(OProperty!("long", "minValueLong")); // Shows the minimum allowed value of the property for a whole number data type.")); // 
  mixin(OProperty!("long", "maxValueLong")); // Shows the maximum allowed value of the property for a whole number data type.")); // 
  mixin(OProperty!("bool", "isArray")); 
  mixin(OProperty!("bool", "isDouble")); 
  mixin(OProperty!("bool", "isString")); 
  mixin(OProperty!("bool", "isJson")); 
  mixin(OProperty!("bool", "isXML")); 
  mixin(OProperty!("bool", "isAssociativeArray")); 
  mixin(OProperty!("bool", "isReadOnly")); // Defines whether the attribute is read-only or if it can be edited.")); // 
  mixin(OProperty!("bool", "isHidden")); // Defines whether the attribute is hidden or shown.")); // 
  mixin(OProperty!("bool", "isRequired")); // Defines whether the attribute is mandatory.")); // 
  mixin(OProperty!("uint", "maxLengthString")); // Shows the maximum allowed length of the property for a string data type.")); // 
  mixin(OProperty!("string", "defaultValueOptionSet")); // Shows the default value of the property.

  mixin(OProperty!("UUID", "attributeClass")); // Super attributeClass.

 /*  O attributeClass(this O)(UUID myId, size_t myMajor = 0, size_t myMinor = 0) { 
    _attributeClass = OOPAttributeClass.id(myId).versionMajor(myMajor).versionMinor(myMinor);
    return cast(O)this; }

  O attributeClass(this O)(string myName, size_t myMajor = 0, size_t myMinor = 0) { 
    _attributeClass = OOPAttributeClass.name(myName).versionMajor(myMajor).versionMinor(myMinor);
    return cast(O)this; }

  O attributeClass(this O)(DAttributeClass myAttclass) { 
    _attributeClass = myAttclass;     
    return cast(O)this; } */

  version(test_uim_entities) {
    unittest {    /// TODO
    }
  }

  // Create a new attribute based on this attributeClass - using attributeClass name 
  auto createAttribute() {
    return createAttribute(_name); }

  DValue createValue() {
    return NullValue; }

  // Create a new attribute based on this attributeClass an a giving name 
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
/*     result.attributeClass(this);
    result.name(aName); */
    return result;
  }
  version(test_uim_entities) {
    unittest {    /// TODO
    }
  }


  override DOOPEntity fromJson(Json aJson) {
    super.fromJson(aJson);
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "attributeClass": this.attributeClass(UUID(v.get!string)); break;
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

    result["attributeClass"] = this.attributeClass.toString;

    return result;
  }
  version(test_uim_entities) {
    unittest {    /// TODO
    }
  }
}
@safe auto OOPAttributeClass() { return new DAttributeClass; }
@safe auto OOPAttributeClass(UUID id) { return new DAttributeClass(id); }
@safe auto OOPAttributeClass(string name) { return new DAttributeClass(name); }
@safe auto OOPAttributeClass(UUID id, string name) { return new DAttributeClass(id, name); }
@safe auto OOPAttributeClass(Json json) { return new DAttributeClass(json); }
@safe auto OOPAttributeClass(DETBCollection aCollection, Json json) { return (new DAttributeClass(json)).collection(aCollection); }