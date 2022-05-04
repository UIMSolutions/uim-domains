module uim.entities.registries;

@safe:
import uim.entities;

public import uim.entities.registries.attribute;

class DOOPObjclassRegistry : DOOPRegistry!DOOPObjclass {
  static DOOPObjclassRegistry registry;
}
auto ObjclassRegistry() {
  if (DOOPObjclassRegistry.registry is null) {
    DOOPObjclassRegistry.registry = new DOOPObjclassRegistry;
  }
  return DOOPObjclassRegistry.registry;
}

class DOOPAttclassRegistry : DOOPRegistry!DAttribute {
  static DOOPAttclassRegistry registry;
}
auto AttributeRegistry() {
  if (DOOPAttclassRegistry.registry is null) {
    DOOPAttclassRegistry.registry = new DOOPAttclassRegistry;
  }
  return DOOPAttclassRegistry.registry;
}

/* class DOOPAttributeRegistry : DOOPRegistry!DOOPAttribute {
  static DOOPAttributeRegistry registry;
}
auto AttributeRegistry() {
  if (DOOPAttributeRegistry.registry is null) {
    DOOPAttributeRegistry.registry = new DOOPAttributeRegistry;
  }
  return DOOPAttributeRegistry.registry;
} */

class DOOPEntityRegistry : DOOPRegistry!DOOPEntity {
  static DOOPEntityRegistry registry;
}
auto EntityRegistry() {
  if (DOOPEntityRegistry.registry is null) {
    DOOPEntityRegistry.registry = new DOOPEntityRegistry;
  }
  return DOOPEntityRegistry.registry;
}

interface IRegistrable {
  // #region registerPath
    // Setter registerPath
    O registerPath(this O)(string path);
    // Getter registerPath
    string registerPath();
  // #endregion registerPath
}