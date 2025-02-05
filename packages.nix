{
  pkgs,
  stdenv,
  ...
}: let
  assets = stdenv.mkDerivation {
    pname = "assets";
    version = "2025";
    src = ./assets;
    buildPhase = '''';
    installPhase = ''
      mkdir -p $out
      cp -r * $out
    '';
  };
in {
  inherit assets;
  inherit (pkgs.callPackage ./gv/packages.nix {}) gv-2025;
  inherit (pkgs.callPackage ./meetups/nix/packages.nix {}) nix-meetup-2024-11-12;
  inherit (pkgs.callPackage ./marp/themes/packages.nix {}) coders-only-marp-theme;
  inherit (pkgs.callPackage ./socrates/packages.nix {}) socrates-2025;
}
