{
  pkgs,
  stdenv,
  ...
}: let
  inherit (pkgs.callPackage ../marp/themes/packages.nix {}) codersonly-marp-theme;
in {
  socrates-2025 = stdenv.mkDerivation {
    pname = "socrates-day";
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
      cp -r ${codersonly-marp-theme}/* $out
      cp 2025.html $out
    '';
  };
}
