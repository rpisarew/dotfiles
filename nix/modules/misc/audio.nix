{ inputs, ... }:
{
  imports = [
    inputs.vscode-server.nixosModules.default
  ];

  # Enable the VS Code server helper
  services.vscode-server.enable = true;
}
