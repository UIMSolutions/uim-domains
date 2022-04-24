module uim.entities.values.interface_;

@safe:
import uim.entities;

interface IValue {
  DAttributeClass attributeClass();
  O attributeClass(this O)(DAttributeClass newAttributeClass);
  
  bool isString();
  bool isInteger();
  bool isBoolean();
  bool isDouble();
  bool isNullable();
  bool isNull();
  bool isObject();
  bool isArray();
}