{stdenv, ...}:
stdenv.mkDerivation {
  pname = "codersonly-marp-theme";
  version = "1.0.0";
  src = ./.;
  installPhase = ''
    mkdir -p $out
    cp * $out
  '';
}
