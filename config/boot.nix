{ pkgs, ... } :

{
  systemd.services.NetworkManager-wait-online.enable = false;

  boot = {
    kernelPackages = pkgs.linuxPackages_cachyos;
    initrd.kernelModules = [ "amdgpu" ];
    tmp.useTmpfs = true;
    loader.efi.canTouchEfiVariables = true;
    loader.systemd-boot.enable = true;
  };

  services = {
    fwupd.enable = false;
    switcherooControl.enable = false;
    printing.enable = false;
  };

}