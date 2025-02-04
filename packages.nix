{pkgs, ...}: {
  inherit (pkgs.callPackage ./gv/packages.nix {}) gv-2025;
}
