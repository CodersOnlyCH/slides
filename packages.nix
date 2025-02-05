{pkgs, ...}: {
  inherit (pkgs.callPackage ./gv/packages.nix {}) gv-2025;
  inherit (pkgs.callPackage ./meetups/nix/packages.nix {}) nix-meetup-2024-11-12;
  inherit (pkgs.callPackage ./marp/themes/packages.nix {}) coders-only-marp-theme;
  inherit (pkgs.callPackage ./socrates/packages.nix {}) socrates-2025;
}
