{ ... }:
{
  nixpkgs.overlays = [
    # (final: prev: {
    #   # Example: take unstable version of a package
    #   google-chrome = prev.callPackage (import <nixpkgs-unstable> { }).google-chrome {};
    # })
  ];
}
