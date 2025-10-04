{ inputs, ... }:
{
    services.gnome.gnome-keyring.enable = true; # secrets backend
    security.pam.services.sddm.enableGnomeKeyring = true;
    programs.ssh.startAgent = false;
}
