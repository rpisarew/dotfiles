{ pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;  # needed for many games/proton
  };

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