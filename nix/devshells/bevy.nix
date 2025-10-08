{ pkgs, ... }:
let
  # libs you need available at runtime
  runtimeLibs = [
    pkgs.udev
    pkgs.alsa-lib
    pkgs.vulkan-loader
    pkgs.xorg.libX11
    pkgs.xorg.libXcursor
    pkgs.xorg.libXi
    pkgs.xorg.libXrandr
    pkgs.libxkbcommon
    pkgs.wayland
  ];
in
pkgs.mkShell {
  # tools + libs in PATH
  packages = [
    pkgs.pkg-config
  ] ++ runtimeLibs;

  # ensure dynamic linker can find those libs at runtime
  env = {
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath runtimeLibs;
  };
}