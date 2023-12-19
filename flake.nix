# /etc/nixos/flake.nix
{
  description = "Dependency management for configuration.nix";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-23.11";
    };
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      nixos-livecd = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}