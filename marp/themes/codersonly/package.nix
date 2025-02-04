{stdenv, ...}:
stdenv.mkDerivation {
  pname = "codersonly-marp-theme";
  version = "1.0.0";
  src = ./.;
}
