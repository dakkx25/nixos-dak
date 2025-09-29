{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    evil-helix
    git
    alacritty
    librewolf
  ];

}