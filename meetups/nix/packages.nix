{
  pkgs,
  stdenv,
  ...
}: let
  inherit (pkgs.callPackage ../../marp/themes/packages.nix {}) codersonly-marp-theme;
in {
  nix-meetup-2024-11-12 = stdenv.mkDerivation {
    pname = "nix-meetup";
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
}
