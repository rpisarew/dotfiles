{ config, pkgs, lib, ... }:
{
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    warn-dirty = false;
  };

  # Basic UX without home-manager
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

  # System-wide packages everyone gets
  environment.systemPackages = with pkgs; [
    vim neovim git curl wget stow fd ripgrep jq btop
  ];

  # Fonts & locales
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.supportedLocales = [ "en_US.UTF-8/UTF-8" "de_DE.UTF-8/UTF-8" ];
  fonts.packages = with pkgs; [ jetbrains-mono ibm-plex noto-fonts noto-fonts-emoji ];

  # sensible defaults
  services.openssh.enable = true;
  security.sudo.wheelNeedsPassword = false;
}
