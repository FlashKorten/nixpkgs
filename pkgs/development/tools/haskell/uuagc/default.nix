# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, filepath, haskellSrcExts, mtl, uuagcCabal, uulib }:

cabal.mkDerivation (self: {
  pname = "uuagc";
  version = "0.9.51";
  sha256 = "07nymg525x41y8pl94d0n990h1yz5km8v0fasiggqv94sd04j22w";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ filepath haskellSrcExts mtl uuagcCabal uulib ];
  meta = {
    homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
    description = "Attribute Grammar System of Universiteit Utrecht";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
