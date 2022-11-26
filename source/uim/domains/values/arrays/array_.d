/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.values.arrays.array_;

@safe:
import uim.domains;

class DArrayValue : DValue {
  this() { super(); }  

  override void initialize() {
    super.initialize;

    this
      .isArray(true);
  }
}

