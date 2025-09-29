{
  description = "NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
  };

  outputs = { self, nixpkgs, chaotic }: {
    nixosConfigurations = {
      dakwa = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./config
          ./hardware-configuration.nix
          chaotic.nixosModules.default
        ];  
      };
    };
  };

}