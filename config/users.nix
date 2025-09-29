{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.daksh = {
    isNormalUser = true;
    createHome = true;
    description = "Daksh";
    extraGroups = [ "wheel" "networkmanager" "audio" "video" ];
    shell = pkgs.fish;
  };

  security = {
    sudo.enable = false;
    doas.enable = true;
    doas.wheelNeedsPassword = false;
  };

  environment.systemPackages = with pkgs; [
    (writeShellScriptBin "sudo" ''
      exec doas "$@"
    '')
  ];

}