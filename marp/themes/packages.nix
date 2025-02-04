{stdenv, ...}: {
  codersonly-marp-theme = stdenv.mkDerivation {
    pname = "codersonly-marp-theme";
    version = "1.0.0";
    src = ./codersonly;
    installPhase = ''
      mkdir -p $out
      cp * $out
    '';
  };
}
