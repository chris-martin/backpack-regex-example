`regex-indef` is a minimal library for parsing regular expressions. It is an
*indefinite* library; it defines the module signature `Str` to avoid having a
dependency on any particular implementation of strings.

There are two packages which provide implementations of the `Str` module
signature:

* `str-string` defines strings as `String`.
* `str-bytestring` defines strings as `ByteString`.
