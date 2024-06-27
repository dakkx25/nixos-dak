{ pkgs, inputs, ... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    initrd.kernelModules = [ "amdgpu" ];
    tmp.cleanOnBoot = true;
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot.enable = true;
    };
  };

  hardware = {
    bluetooth = {
      enable = true;
      settings.General.Experimental = true;
    };

    opengl = {
      enable = true;
      driSupport = true;
      extraPackages = with pkgs; [ amdvlk ];
    };
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = inputs.hyprland.packages."${pkgs.system}".hyprland;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
  };

  time.timeZone = "Asia/Kolkata";
  i18n = {
    defaultLocale = "en_IN";
    extraLocaleSettings = {
      LC_ADDRESS = "en_IN";
      LC_IDENTIFICATION = "en_IN";
      LC_MEASUREMENT = "en_IN";
      LC_MONETARY = "en_IN";
      LC_NAME = "en_IN";
      LC_NUMERIC = "en_IN";
      LC_PAPER = "en_IN";
      LC_TELEPHONE = "en_IN";
      LC_TIME = "en_IN";
    };
  };

  networking.hostName = "dakwa";
  networking.networkmanager.enable = true;

  security = {
    rtkit.enable = true;
    sudo.enable = true;
    sudo.wheelNeedsPassword = false;
  };

  services = {
    auto-cpufreq.enable = true;
    blueman.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
      wireplumber.enable = true;
    };
  };

  systemd.services.NetworkManager-wait-online.enable = false;

  users.users = {
    root.shell = pkgs.zsh;
    daksh = {
      isNormalUser = true;
      description = "Daksh";
      extraGroups = [ "wheel" "networkmanager" ];
      shell = pkgs.zsh;
    };
  };

  programs.zsh.enable = true;
  
  nix = {
    channel.enable = false;

    settings = {
      auto-optimise-store = true;
      experimental-features = "nix-command flakes";
      substituters = [ "https://hyprland.cachix.org" ];
      trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.05";

  home-manager = {
    backupFileExtension = "bak";
    extraSpecialArgs = {inherit inputs;};
    users."daksh" = import ../../modules/home;
  };
}
