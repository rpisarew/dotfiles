{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];
  hardware.graphics.enable32Bit = true; # For 32 bit applications

  # GPU monitoring
  environment.systemPackages = with pkgs; [
    btop-rocm
    lact
    rocmPackages.rocminfo
    rocmPackages.rocm-smi
    rocmPackages.rocm-core
    rocmPackages.rocmPath
  ];
  systemd.packages = with pkgs; [ lact ];
  systemd.services.lactd.wantedBy = ["multi-user.target"];
}