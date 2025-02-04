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
    buildInputs = with pkgs; [
      codersonly-marp-theme
      marp-cli
    ];
    buildPhase = ''
      marp --theme-set ${codersonly-marp-theme} \
           --theme codersonly \
            2025.md
    '';
    installPhase = ''
      mkdir -p $out
      cp 2025.html $out
    '';
  };
}
