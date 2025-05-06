{
  pkgs,
  stdenv,
  ...
}: let
  mkSlides = {date, ...}: let
    inherit (pkgs.callPackage ../../marp/themes/packages.nix {}) codersonly-marp-theme;
    version = builtins.replaceStrings ["-"] ["."] date;
  in
    stdenv.mkDerivation {
      inherit version;
      pname = "meetup";
      src = ./.;
      buildInputs = with pkgs; [
        codersonly-marp-theme
        marp-cli
      ];
      buildPhase = ''
        marp --theme-set ${codersonly-marp-theme} \
             --theme codersonly \
              ${date}.md
      '';
      installPhase = ''
        mkdir -p $out
        cp ${codersonly-marp-theme}/* $out
        cp -r assets $out
        cp ${date}.html $out
      '';
    };
in {
  meetup-2024-11-12 = mkSlides {date = "2024-11-12";};
  meetup-2025-03-05 = mkSlides {date = "2025-03-05";};
  meetup-2025-05-06 = mkSlides {date = "2025-05-06";};
}
