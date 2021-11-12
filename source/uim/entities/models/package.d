module uim.entities.models;

import uim.entities;

public import uim.entities.models.stores;
public import uim.entities.models.tools;
public import uim.entities.models.objclass;
public import uim.entities.models.obj;
public import uim.entities.models.model;

auto entityDeclaration(string classname, string entityname) {
  return 
  `UUID _`~entityname~`Id;
  string _`~entityname~`Name;
  size_t _`~entityname~`Major;
  size_t _`~entityname~`Minor;
  `~classname~` _`~entityname~`;`;
}

auto entityGetter(string classname, string entityname) {
  return `
  @property UUID `~entityname~`Id() { return _`~entityname~`Id; }
  @property string `~entityname~`Name() { return _`~entityname~`Name; }
  @property `~classname~` `~entityname~`(size_t major = 0, size_t minor = 0) { 
    if (_`~entityname~`) return cast(`~classname~`)_`~entityname~`;

    `~classname~` result;

    if (auto model = this.model) {
      result = cast(`~classname~`)model[_`~entityname~`Id, _`~entityname~`Name, major, minor];
    }
    
    return result; }
`;
}

auto entitySetter(string classname, string entityname) {
  return `
  @property O `~entityname~`Id(this O)(UUID newId, size_t major = 0, size_t minor = 0) { 
    _`~entityname~`Id = newId; 
    _`~entityname~`Name = null; 
    _`~entityname~`Major = versionMajor; 
    _`~entityname~`Minor = versionMinor; 
    _`~entityname~` = null; 

    return cast(O)this;  
  }
  @property O `~entityname~`Name(this O)(string newId, size_t major = 0, size_t minor = 0) { 
    _`~entityname~`Id = newId; 
    _`~entityname~`Name = null; 
    _`~entityname~`Major = versionMajor; 
    _`~entityname~`Minor = versionMinor; 
    _`~entityname~` = null; 

    return cast(O)this;  
  }
  @property O `~entityname~`(this O)(`~classname~` newEntity) { 
    _`~entityname~` = newEntity; 
    if (_`~entityname~`) { // Not null
      _`~entityname~`Id = _`~entityname~`.id;
      _`~entityname~`Name = _`~entityname~`.name;
      _`~entityname~`Major = versionMajor; 
      _`~entityname~`Minor = versionMinor; 
    }
    return cast(O)this;  
  }
  `;
}

template EProperty(string className, string entityName) {
  const char[] EProperty = 
    entityDeclaration(className, entityName)~
    entityGetter(className, entityName)~
    entitySetter(className, entityName);
}

@safe struct EntityLink() {
  string className;
  UUID id = UUID();
  long major = 0;
  long minor = 0;

  this(UUID anId, long aMajor = 0, long aMinor = 0) {
    className = null;
    id = anID;
    major = aMajor;
    minor = aMinor;
  }

  this(string aClassname, UUID anId, long aMajor = 0, long aMinor = 0) {
    className = aClassname;
    id = anID;
    major = aMajor;
    minor = aMinor;
  }

  @property void fromString(string data) {
    auto items = aJson["attclass"].get!string.split("/");
    if (items.length == 0) return;

    major = 0;
    minor = 0;
    switch (items.length) {
      case 1:
        className = items[0];
      case 2:
        className = items[0];
        id = UUID(items[1]);
      case 3:
        className = items[0];
        id = UUID(items[1]);
        major = (items[2] == "*" ? 0 : to!long(items[2]));
      default: 
        className = items[0];
        id = UUID(items[1]);
        major = (items[2] == "*" ? 0 : to!long(items[2]));
        minor = (items[3] == "*" ? 0 : to!long(items[3]));
        break;
    }
  }  

  @property string toString() {
    if (className.length == 0) return id.toString~"/"~(major == 0 ? "*" : to!string(major))~"/"~(minor == 0 ? "*" : to!string(minor));
    return className~"/"~id.toString~"/"~(major == 0 ? "*" : to!string(major))~"/"~(minor == 0 ? "*" : to!string(minor));
  }  
}
auto entityToSelect(DOOPEntity anEntity) {
    Json result = Json.emptyObject;
    if (anEntity) {
      result["$or"] = [["id": anEntity.id.toString], ["name": anEntity.name]].serializeToJson;
      result["versionNumber"] = anEntity.versionNumber;
    }

    return result;
}