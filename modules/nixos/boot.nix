{pkgs, ...}: {
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    initrd.kernelModules = ["amdgpu"];
    tmp.cleanOnBoot = true;
    plymouth.enable = true;

    loader = {
      efi.canTouchEfiVariables = true;
      timeout = 0;

      systemd-boot = {
        enable = true;
        configurationLimit = 5;
      };
    };
  };
}
