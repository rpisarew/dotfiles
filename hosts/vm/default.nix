{ config, pkgs, unstablePkgs, lib, ... }:

{
  networking.hostName = "vm";

  imports = [
    ../thinkpad/hardware-configuration.nix
    # choose one:
    ../..//modules/desktop/sway.nix
    # or: ../..//modules/desktop/gnome.nix
  ];

  time.timeZone = "Europe/Berlin";

  # Bootloader example
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Kernel extras per host
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };

  # Packages only this host needs
  environment.systemPackages = with pkgs; [
    tlp smartmontools
  ];

  services.tlp.enable = true;
}
