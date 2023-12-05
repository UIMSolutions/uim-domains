module uim.domains.helpers;

@safe:
import uim.domains;

public import uim.domains.helpers.mixins;

size_t hasVersionMajor(T:DEntity)(T[] versions, size_t versionMajor) {
  foreach (v; versions) if (v.versionMajor == versionMajor) { return true; }          
  return false;
}

/* size_t countVersionMinor(T:DEntity)(T[] versions, size_t versionMajor, size_t versionMinor) {
  size_t result;
  foreach (v; versions) if ((v.versionMajor == versionMajor) && (v.versionMinor == versionMinor)) result++;          
  return result;
}
 */
size_t versionMax(T:DEntity)(T[] versions) {
  size_t result;

  foreach (v; versions) {
    if (v.versionMajor > result) result = v.versionMajor;          
  }

  return result;
}

size_t versionMin(T:DEntity)(T[] versions) {
  size_t result;

  if (versions) result = versions[0].versionMajor;
  foreach (v; versions) {
    if (v.versionMajor < result) result = v.versionMajor;          
  }

  return result;
}

T[] versionsOf(T:DEntity)(T[] versions, size_t versionMajor) {
  T[] results;
  foreach (v; versions) if (v.versionMajor == versionMajor) results ~= v;          
  return results;
}
T versionOf(T:DEntity)(T[] versions, size_t versionMajor) {
  foreach (v; versions) if (v.versionMajor == versionMajor) return v;          
  return null;
}
T versionOf(T:DEntity)(T[] versions, size_t versionMajor, size_t versionMinor) {
  foreach (v; versions) if ((v.versionMajor == versionMajor) && (v.versionMinor == versionMinor)) return v;          
  return null;
}

bool hasVersion(T:DEntity)(T[] versions, size_t versionMajor) {
  if (versions.versionOf(versionMajor)) { return true; }          
  return false;
}
bool hasVersion(T:DEntity)(T[] versions, size_t versionMajor, size_t versionMinor) {
  if (versions.versionOf(versionMajor, versionMinor)) { return true; }          
  return false;
}

size_t versionMajorMin(T:DEntity)(T[] versions) {
  size_t result;

  if (versions) result = versions[0].versionMajor;
  foreach (v; versions) {
    if (v.versionMajor < result) result = v.versionMajor;          
  }

  return result;
}

size_t versionMax(T:DEntity)(T[] versions, size_t versionMajor) {
  size_t result;
  auto vs = versionsOf(versions, versionMajor);

  foreach (v; vs) {
    if (v.versionMinor > result) result = v.versionMinor;          
  }

  return result;
}

size_t versionMin(T:DEntity)(T[] versions, size_t versionMajor) {
  size_t result;
  auto versions = versions.versionsOf(versionMajor);
  
  if (versions.length > 0) result = versions[0].versionMinor;
  foreach (v; versions) {
    if (v.versionMinor < result) result = v.versionMinor;          
  }

  return result;
}

T version_(T:DEntity)(T[] versions, size_t versionMajor, size_t versionMinor) {
  if (!versions) return null;

  if ((versionMajor > 0) && (versionMinor > 0)) {
    foreach(v; versions) if ((v.versionMajor == versionMajor) && (v.versionMinor == versionMinor)) return v;
  }
  if ((versionMajor > 0) && (versionMinor == 0)) {
    T[] subVersions;
    foreach(v; versions) if ((v.versionMajor == versionMajor)) subVersions ~= v;
    if (!subVersions) return null;
    if (subVersions.length == 1) return subVersions[0];

    T result = subVersions[0];
    foreach(v; subVersions) {
      if (v.versionMinor > result.versionMinor) result = v;
    }
    return result;
  }

  if ((versionMajor == 0) && (versionMinor > 0)) {
    T[] subVersions;
    foreach(v; versions) if ((v.versionMinor == versionMinor)) subVersions ~= v;
    if (!subVersions) return null;
    if (subVersions.length == 1) return subVersions[0];

    T result = subVersions[0];
    foreach(v; subVersions) {
      if (v.versionMajor > result.versionMajor) result = v;
    }
    return result;
  }

  // if ((versionMajor == 0) && (versionMinor == 0)) {
  auto result = versions[0];

  foreach(v; versions) {
    if (v.versionMajor > result.versionMajor) {
      result = v;
    }
    else if ((v.versionMajor == result.versionMajor) && (v.versionMinor > result.versionMinor)) {
      result = v;
    }
  } 

  return result;
}

T versionLast(T:DEntity)(T[] versions, size_t major = 0, size_t minor = 0) {
  T result;

  if (major == 0) {
    auto versionMajor = versions.versionMax;
    auto versionMinor = versions.versionMax(versionMajor);
    result = versions.versionOf(versionMajor, versionMinor); 
  }
  else {
    if (minor == 0) {
      auto versionMinor = versions.versionMax(major);
      result = versions.versionOf(major, versionMinor); 
    }
    else {
      result = versions.versionOf(major, minor); 
    }
  }

  return result;
}
