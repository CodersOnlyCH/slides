{stdenv, ...}: {
  codersonly-marp-theme = stdenv.mkDerivation {
    pname = "codersonly-marp-theme";
    version = "1.0.0";
    src = ./codersonly;
    installPhase = ''
      mkdir -p $out/marp/themes/codersonly
      cp * $out/marp/themes/codersonly
    '';
  };
}
