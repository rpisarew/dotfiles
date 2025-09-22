{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gcc gnumake pkg-config
    python3 nodejs_22 go
    docker-compose
  ];
  virtualisation.docker.enable = true;
  users.groups.docker.members = [ "youruser" ];
}
