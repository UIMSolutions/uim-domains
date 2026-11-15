module uim.domain.uda.general;

import std.string;

struct ConvertWith(alias ConverterFunc) {
    alias convert = ConverterFunc;
}

/// Represents a default value for a field, specified as a string.
struct DefaultVal {
    string value;
}

/// Sanitizes and trims a raw string by removing leading and trailing whitespace.
string sanitizeAndTrim(string raw) @safe {
    return raw.strip();
}

