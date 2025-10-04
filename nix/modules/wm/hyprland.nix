{ inputs, pkgs, ... }:
let
  system = pkgs.stdenv.hostPlatform.system;
  pkgsUnstable = inputs.nixpkgs-unstable.legacyPackages.${system};
in
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = pkgsUnstable.hyprland;
  };
  programs.waybar.enable = true;

  environment.systemPackages = with pkgs; [
    hyprlock
    hypridle
    hyprpicker

    swww
    waypaper

    mpv
    mpvpaper
  ];
}