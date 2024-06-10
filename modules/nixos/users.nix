{pkgs, ...}: {
  users.users = {
    daksh = {
      isNormalUser = true;
      description = "Daksh";
      extraGroups = ["wheel" "networkmanager" "audio" "video"];
      shell = pkgs.zsh;
    };

    root = {
      shell = pkgs.zsh;
    };
  };

  programs.zsh.enable = true;
}
