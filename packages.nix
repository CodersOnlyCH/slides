{pkgs, ...}: {
  inherit (pkgs.callPackage ./marp/themes/packages.nix {}) coders-only-marp-theme;
  inherit (pkgs.callPackage ./gv/packages.nix {}) gv-2025;
}
