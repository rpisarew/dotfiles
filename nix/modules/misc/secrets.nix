{ pkgs, ... }:
{
  programs.seahorse.enable = true; # enable the graphical frontend for managing

  services.gnome.gnome-keyring.enable = true;
  services.dbus.packages = [ pkgs.gnome-keyring pkgs.gcr ];
  security.pam.services.sddm.enableGnomeKeyring = true;

  environment.sessionVariables.SSH_AUTH_SOCK = "/run/user/$UID/keyring/ssh";
}
