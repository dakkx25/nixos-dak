{
  inputs,
  ...
}: {
  imports = [
    ../../modules/nixos
    ./hardware-configuration.nix
  ];

  home-manager = {
    backupFileExtension = "bak";
    extraSpecialArgs = {inherit inputs;};
    users = {
      "daksh" = import ../../modules/home;
    };
  };
}
