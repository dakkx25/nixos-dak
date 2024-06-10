{
  imports = [
    ./hyprland.nix
  ];

  home = {
    username = "daksh";
    homeDirectory = "/home/daksh";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
