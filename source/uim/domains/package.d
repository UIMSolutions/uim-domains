/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains;

@safe:
// Phobos
public import std.algorithm; 
public import std.conv; 
public import std.range; 
public import std.range.primitives; 
public import std.range.interfaces; 
public import std.base64;
public import std.csv;
// public import std.json;
public import std.zip; // Read/write data in the ZIP archive format.
public import std.zlib;
public import std.stdio;
public import std.string;
public import std.uuid;
public import std.digest; // Compute digests such as md5, sha1 and crc32.
public import std.digest.crc; // Cyclic Redundancy Check (32-bit) implementation.
public import std.digest.hmac; // Compute HMAC digests of arbitrary data.
public import std.digest.md; // Compute MD5 hash of arbitrary data.
public import std.digest.murmurhash; // Compute MurmurHash of arbitrary data.
public import std.digest.ripemd; // Compute RIPEMD-160 hash of arbitrary data.
public import std.digest.sha; // Compute SHA1 and SHA2 hashes of arbitrary data.
public import std.file; // Manipulate files and directories.
public import std.path; // Manipulate strings that represent filesystem paths.
public import std.stdio; // Perform buffered I/O.
// Networking
public import std.socket; // Socket primitives.
public import std.net.curl; // Networking client functionality as provided by libcurl.
public import std.net.isemail; // Validates an email address according to RFCs 5321, 5322 and others.
public import std.uri; // Encode and decode Uniform Resource Identifiers (URIs).
public import std.uuid; // Universally-unique identifiers for resources in distributed systems.
// Numeric
public import std.bigint; // An arbitrary-precision integer type.
public import std.complex; // A complex number type.
public import std.math; // Elementary mathematical functions (powers, roots, trigonometry).
public import std.mathspecial; // Families of transcendental functions.
public import std.numeric; // Floating point numerics functions.
public import std.random; // Pseudo-random number generators.
// String manipulation
public import std.string; // Algorithms that work specifically with strings.
public import std.array; // Manipulate builtin arrays.
public import std.datetime; // Manipulate builtin arrays.
public import std.algorithm; // Generic algorithms for processing sequences.
public import std.uni; // Fundamental Unicode algorithms and data structures.
public import std.utf; // Encode and decode UTF-8, UTF-16 and UTF-32 strings.
public import std.format; // Format data into strings.
public import std.path; // Manipulate strings that represent filesystem paths.
public import std.regex; // Regular expressions.
public import std.ascii; // Routines specific to the ASCII subset of Unicode.
public import std.encoding; // Handle and transcode between various text encodings.
public import std.windows.charset; // Windows specific character set support.
public import std.outbuffer; // Serialize data to ubyte arrays.

// DUBS
public import vibe.d;

// UIM
public import uim.core;
public import uim.oop;
public import uim.jsonbase;
public import uim.entitybase;
// public import uim.javascript;

// Packages
/* ublic import uim.domains.attributes;
public import uim.domains.commons;
public import uim.domains.elements;
public import uim.domains.entities;
public import uim.domains.enumerations;
public import uim.domains.events;
public import uim.domains.exceptions;
public import uim.domains.helpers;
public import uim.domains.interfaces;
public import uim.domains.models;
public import uim.domains.objclasses;
public import uim.domains.registries;
public import uim.domains.usecases;
public import uim.domains.values; */

// Test function
public import uim.domains.tests;

/* template GetEntity(string name, string nameId, string className) {
    const char[] GetEntity = `
      auto `~name~`() {  
        if ("`~nameId~`" in this.attributes) {
          auto id = this.attributes["`~nameId~`"].toString;
          if (collection && collection.tenant) {
        auto tenant = collection.tenant;  
            return collection.tenant.findOne(`~className~`.entityClasses, ["id":id]);
            if (json != Json(null)) return `~className~`(json).siteName(this.siteName).repository(collection && collection.tenant); }}
        return null;
      }`;
  }
 */
string crudScripts() {
  return "";
}

alias CreateEntity = DEntity delegate(Json json);
CreateEntity[string] createEntities;
/* 
class EntityFactory {
  DEntity createEntities(string className, Json json) {
    if (className !in entityCRUDs) return null;
    return entityCRUDs[className].create(json);
  }
} */

Json toJson(DEntity[] entities) {
  auto result = Json.emptyArray;
  foreach(entity; entities) result ~= entity.toJson;
  return result;
} 

DAttribute[string] attributeRegistry;
// DOOPObjclass[string] objclassRegistry;

version(test_uim_domains) {
  unittest {
    /* auto attribute = uimAttributeRegistry["uim/boolean"].create;
    assert(uimAttributeRegistry["uim/boolean"].create); */
//    assert(cast(DOOPBooleanAttribute)attribute);
/*     writeln(attribute.toString);
    attribute = uimAttributeRegistry["uim/boolean"];
    writeln(attribute.toString); */
    //assert(attribute.toString == "false");
//    assert(attribute.fromString("true").toString == "true"); 
  }
}

version(test_uim_domains) {
  unittest {
/*     DOOPAttribute attribute = OOPBooleanAttribute;
    writeln(attribute);
    writeln(OOPBooleanAttribute); */
  }}






string[] attributeDataFormats = [
  "Array",
  "Binary",
  "Boolean",
  "Byte",
  "Char",
  "Date",
  "DateTime",
  "DateTimeOffset",
  "Decimal",
  "Double",
  "Float",
  "Integer",
  "Long",
  "Map",
  "String",
  "Time",
  "Json",
  "UUID"
];