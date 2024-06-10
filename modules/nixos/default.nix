{
  imports = [
    ./boot.nix
    ./hardware.nix
    ./hyprland.nix
    ./locale.nix
    ./network.nix
    ./security.nix
    ./services.nix
    ./users.nix
  ];

  nix = {
    channel.enable = false;

    settings = {
      auto-optimise-store = true;
      experimental-features = "nix-command flakes";
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.05";
}
