{ stdenv, fetchurl, cmake, qt4, kdelibs, qimageblitz, libxslt, gettext, pkgconfig, exempi
, popplerSupport ? true, libpoppler ? null
, ksaneSupport ? true, libksane ? null
, qjsonSupport ? true, qjson ? null
, taglibSupport ? true, taglib ? null
}:

stdenv.mkDerivation rec {
  name = "tellico-${version}";
  version = "2.3.8";

  src = fetchurl {
    url = "http://tellico-project.org/files/${name}.tar.bz2";
    sha256 = "2d8a0d06951e0755c7987d0a07cc8157cd42c8b1c143170042183ff1e89e2ccb";
  };

  buildInputs = with stdenv.lib;
  [ cmake qt4 kdelibs qimageblitz libxslt gettext pkgconfig exempi ]
  ++ optional popplerSupport libpoppler
  ++ optional ksaneSupport libksane
  ++ optional qjsonSupport qjson
  ++ optional taglibSupport taglib
  ;

  configurePhase = ''
    mkdir build
    cd build
    cmake .. -DCMAKE_INSTALL_PREFIX=$out
  '';

  meta = {
    homepage = "http://tellico-project.org";
    description = ''
      Tellico makes it easy to track your books, videos, music, even your wine
      and anything else. A simple and intuitive interface shows cover images,
      groupings, and any detail you want. Grab information from many popular
      Internet sites, including IMDB.com, Amazon.com, and most libraries.
    '';
    license = stdenv.lib.licenses.publicDomain;
  };
}
