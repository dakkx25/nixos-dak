{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      vaapiVdpau
      libvdpau-va-gl
    ];
  };

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "radeonsi";
    VDPAU_DRIVER = "va_gl";
    NIXOS_OZONE_WL = "1";
  };

}