{
  services = {
    auto-cpufreq.enable = true;

    pipewire = {
      enable = true;
      pulse.enable = true;
      wireplumber.enable = true;

      alsa = {
        enable = true;
        support32Bit = true;
      };
    };
  };

  systemd.services.NetworkManager-wait-online.enable = false;
}
