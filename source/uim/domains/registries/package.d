module uim.domains.registries;

@safe:
import uim.domains;

public import uim.domains.registries.attribute;

class DOOPObjclassRegistry : DRegistry!DOOPObjclass {
  static DOOPObjclassRegistry registry;
}
auto ObjclassRegistry() {
  if (DOOPObjclassRegistry.registry is null) {
    DOOPObjclassRegistry.registry = new DOOPObjclassRegistry;
  }
  return DOOPObjclassRegistry.registry;
}

class DOOPAttclassRegistry : DRegistry!DAttribute {
  static DOOPAttclassRegistry registry;
}
auto AttributeRegistry() {
  if (DOOPAttclassRegistry.registry is null) {
    DOOPAttclassRegistry.registry = new DOOPAttclassRegistry;
  }
  return DOOPAttclassRegistry.registry;
}

/* class DOOPAttributeRegistry : DRegistry!DOOPAttribute {
  static DOOPAttributeRegistry registry;
}
auto AttributeRegistry() {
  if (DOOPAttributeRegistry.registry is null) {
    DOOPAttributeRegistry.registry = new DOOPAttributeRegistry;
  }
  return DOOPAttributeRegistry.registry;
} */

class DEntityRegistry : DRegistry!DEntity {
  static DEntityRegistry registry;
}
auto EntityRegistry() {
  if (DEntityRegistry.registry is null) {
    DEntityRegistry.registry = new DEntityRegistry;
  }
  return DEntityRegistry.registry;
}

interface IRegistrable {
  // #region registerPath
    // Setter registerPath
    O registerPath(this O)(string path);
    // Getter registerPath
    string registerPath();
  // #endregion registerPath
}