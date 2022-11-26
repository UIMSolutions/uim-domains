/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.interface_;

@safe:
import uim.domains;

interface IValue {
  DAttribute attribute();
  O attribute(this O)(DAttribute newAttribute);
  
  bool isString();
  bool isInteger();
  bool isBoolean();
  bool isDouble();
  bool isNullable();
  bool isNull();
  bool isObject();
  bool isArray();

  O value(this O)(string newValue);
  O value(this O)(Json newValue);

  Json toJson();
/*   O fromJson(this O)(Json newValue);
  O fromString(this O)(string newValue);   */
}