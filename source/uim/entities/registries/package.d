module uim.entities.registries;

@safe:
import uim.entities;

public import uim.entities.registries.attribute;

class DOOPRegistryObjclasses : DOOPRegistry!DOOPObjclass {}
DOOPRegistryObjclasses uimRegistryObjclasses;

class DOOPRegistryAttclasses : DOOPRegistry!DOOPAttclass {}
DOOPRegistryAttclasses uimRegistryAttclasses;

class DOOPRegistryAttributes : DOOPRegistry!DOOPAttribute {}
DOOPRegistryAttributes uimRegistryAttributes;

class DOOPRegistryEntities : DOOPRegistry!DOOPEntity {
}
DOOPRegistryEntities uimRegistryEntities;

interface IRegistrable {

  // Setter registerPath
  void registerPath(string path);
  // Getter registerPath
  string registerPath();
}