{
  pkgs,
  stdenv,
  ...
}: let
  codersonly-marp-theme = pkgs.callPackage ../marp/themes/codersonly/package.nix {};
in {
  gv-2025 = stdenv.mkDerivation {
    pname = "coersonly-gv";
    version = "2025";
    src = ./.;
    buildInputs = with pkgs; [marp-cli];
    buildPhase = ''
      marp 2025.md
    '';
    installPhase = ''
      mkdir -p $out
      cp 2025.html $out
    '';
  };
}
