{ pkgs ? import <nixpkgs> {}
, ghc ? pkgs.haskell.packages.ghc821
}:

let

  ghcWithPackages = ghc.ghcWithPackages (p: with p; [
    cabal-install
  ]);

in

  pkgs.stdenv.mkDerivation {
    name = "backback-regex-example";
    buildInputs = [ ghcWithPackages ];
  }
