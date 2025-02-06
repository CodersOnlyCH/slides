{
  pkgs,
  stdenv,
  ...
}: let
  inherit (pkgs.callPackage ../../marp/themes/packages.nix {}) codersonly-marp-theme;
in {
  meetup-2024-11-12 = stdenv.mkDerivation {
    pname = "meetup";
    version = "2024.11.12";
    src = ./.;
    buildInputs = with pkgs; [
      codersonly-marp-theme
      marp-cli
    ];
    buildPhase = ''
      marp --theme-set ${codersonly-marp-theme} \
           --theme codersonly \
            2024-11-12.md
    '';
    installPhase = ''
      mkdir -p $out
      cp ${codersonly-marp-theme}/* $out
      cp -r assets $out
      cp 2024-11-12.html $out
    '';
  };
  meetup-2025-03-05 = stdenv.mkDerivation {
    pname = "meetup";
    version = "2025.03.05";
    src = ./.;
    buildInputs = with pkgs; [
      codersonly-marp-theme
      marp-cli
    ];
    buildPhase = ''
      marp --theme-set ${codersonly-marp-theme} \
           --theme codersonly \
            2025-03-05.md
    '';
    installPhase = ''
      mkdir -p $out
      cp ${codersonly-marp-theme}/* $out
      cp -r assets $out
      cp 2025-03-05.html $out
    '';
  };
}
