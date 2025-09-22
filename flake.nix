{
  description = "NixOS + Stow dotfiles (no home-manager)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/tree/22.05";   # stable
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, unstable, flake-utils, ... }:
  let
    mkSystem = host:
      let
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; config.allowUnfree = true; };
        unstablePkgs = import unstable { inherit system; config.allowUnfree = true; };
      in
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          inherit unstablePkgs;
        };
        modules = [
          ./hosts/${host}/hardware-configuration.nix
          ./hosts/${host}/default.nix
          ./modules/common.nix
          ./modules/users.nix
          ./modules/networking.nix
          ./modules/devtools.nix
          # ./modules/virtualization.nix
          # add/remove role modules per host file
          ./overlays/default.nix
          ./pkgs/default.nix
        ];
      };
  in {
    nixosConfigurations = {
      thinkpad = mkSystem "thinkpad";
      desktop  = mkSystem "desktop";
    };

    # Optional: easy fmt/lint devShell
    devShells.x86_64-linux.default = let pkgs = import nixpkgs { system = "x86_64-linux"; }; in
      pkgs.mkShell { buildInputs = with pkgs; [ nixfmt-rfc-style statix deadnix ]; };
  };
}
