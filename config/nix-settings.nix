{
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "25.05";
    
  nix = {
    channel.enable = false;

    settings = {
      substituters = [ "https://nyx.cachix.org" ];
      trusted-public-keys = [ "nyx.cachix.org-1:4WCf0Uj6xLWGBNaSjxv7DmvI8y5AgP0ewg64JopAa50=" ];
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

}