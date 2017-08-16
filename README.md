`regex-indef` is a minimal library for parsing regular expressions. It is an
*indefinite* library. It defines two things:

* A module named `Regex` (which contains an import of `Str`)
* A module signature named `Str`; we use a module signature here, rather than a
  module, to defer specifying exactly what type of strings the `Regex` module
  parses.

Each of the following packages provides an implementation of the `Str` module
signature:

* `str-string` defines strings as `String`.
* `str-bytestring` defines strings as `ByteString`.

Then there are two empty packages, `regex-string` and `regex-bytestring`. Each
of these packages combines `regex-indef` with a `Sig` implementation to produce
a *definite* regular expression library.

* `regex-string` depends on `regex-indef` and `str-string`, and it reexports the
  `Regex` module as `Regex.String`.
* `regex-bytestring` depends on `regex-indef` and `str-bytestring`, and it
  reexports the `Regex` module as `Regex.ByteString`.

## Summary of terminology

* **Module** - An `.hs` file.
* **Module signature** - An `.hsig` file.
* **Package** - A directory containing a `.cabal` file.
* **Library** - A `library` stanza within a `.cabal` file.
* **Indefinite library** - A library that has module signatures without
  implementations. (A library with a "hole" in it.)
* **Definite library** - A library for which all module signatures (if any)
  have implementations. (A library that is not missing anything.)
* **Reexporting a module** - To include a module in a library's API under a
  different name than the name with which the module was originally defined.

---

See also: Edward Z. Yang's blog post [*Try Backpack: Cabal packages*][1].

  [1]: http://blog.ezyang.com/2017/01/try-backpack-cabal-packages/
