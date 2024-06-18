{
  description = "Murphy's NixOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
  };

  outputs = inputs@{ nixpkgs, home-manager, nixos-hardware, ... }: {
    nixosConfigurations = {
      TARS = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./core/nixos.nix
          ./hosts/TARS/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.murphy.imports = [ ./config/home.nix ./hosts/TARS/home.nix ];
          }
        ];
      };

      CASE = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./core/nixos.nix
          ./hosts/CASE/configuration.nix
          nixos-hardware.nixosModules.framework-12th-gen-intel
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.murphy.imports = [ ./config/home.nix ./hosts/CASE/home.nix ];
          }
        ];
      };
    };
  };
}
