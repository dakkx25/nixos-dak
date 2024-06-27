{
  home = {
    username = "daksh";
    homeDirectory = "/home/daksh";
    stateVersion = "24.05";
  };

  imports = [ ./home ];

  programs.home-manager.enable = true;
}
