{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
      perSystem = {pkgs, ...}: {
        devShells = {
          default = pkgs.mkShell {};
          presentation = pkgs.mkShell {
            packages = with pkgs; [
              marp-cli
              reveal-md
            ];
          };
        };
        packages = with pkgs; let
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
          gv = callPackage ./gv/packages.nix {};
          marp-themes = callPackage ./marp/themes/packages.nix {};
          meetups = callPackage ./meetups/nix/packages.nix {};
          socrates = callPackage ./socrates/packages.nix {};
        in {
          inherit assets;
          inherit (gv) gv-2025;
          inherit (marp-themes) codersonly-marp-theme;
          inherit (meetups) meetup-2024-11-12 meetup-2025-03-05;
          inherit (socrates) socrates-2025;
        };
      };
    };
}
