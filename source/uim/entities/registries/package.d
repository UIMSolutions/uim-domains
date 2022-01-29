module uim.entities.registries;

@safe:
import uim.entities;

public import uim.entities.registries.attribute;

class DOOPObjclassRegistry : DOOPRegistry!DOOPObjclass {}
DOOPObjclassRegistry uimObjclassRegistry;

class DOOPAttclassRegistry : DOOPRegistry!DOOPAttributeClass {}
DOOPAttclassRegistry uimAttclassRegistry;

class DOOPAttributeRegistry : DOOPRegistry!DOOPAttribute {}
DOOPAttributeRegistry uimAttributeRegistry;

class DOOPEntityRegistry : DOOPRegistry!DOOPEntity {}
DOOPEntityRegistry uimEntityRegistry;

interface IRegistrable {
  // #region registerPath
    // Setter registerPath
    O registerPath(this O)(string path);
    // Getter registerPath
    string registerPath();
  // #endregion registerPath
}