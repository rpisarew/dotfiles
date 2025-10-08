{ lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    clang
    cmake
    pkg-config
    rustup
    rust-analyzer
    rustfmt
    clippy
  ];
}
