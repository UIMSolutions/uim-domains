/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.models.tools.attributes;

import uim.domains;

/* DAttribute attributeOf(DOOPModel myModel, UUID id) {
  if (myModel) {
    if (auto classes = myModel.attributes) {
      return classes.entity(id);
  }}
  return null;
}

DAttribute attributeOf(DOOPModel myModel, string idOrName) {
  if (myModel) {
    if (auto classes = myModel.attributes) {
      return classes.entity(idOrName);
  }}
  return null;
}

DAttribute attributeOf(DOOPModel myModel, UUID id, string name) {
  if (myModel) {
    if (auto classes = myModel.attributes) {
      if (auto found = classes.entity(id)) return found;
      if (auto found = classes.entity(name)) return found;
  }}
  return null;
}
 */