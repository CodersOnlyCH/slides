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
      perSystem = {pkgs, ...}: let
        packages = pkgs.callPackage ./packages.nix {};
      in {
        devShells = {
          default = pkgs.mkShell {};
          presentation = pkgs.mkShell {
            packages = with pkgs; [
              marp-cli
              reveal-md
            ];
          };
        };
        packages = {
          inherit (packages) assets codersonly-marp-theme gv-2025 meetup-2024-11-12 socrates-2025;
        };
      };
    };
}
