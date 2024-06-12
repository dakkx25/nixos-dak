{pkgs, ...}: {
  imports = [
    ./envars.nix
    ./foot.nix
    ./fuzzel.nix
    ./hyprland.nix
    ./mpv.nix
    ./waybar.nix
    ./zathura.nix
    ./zsh.nix
  ];

  home = {
    username = "daksh";
    homeDirectory = "/home/daksh";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
