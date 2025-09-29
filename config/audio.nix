{
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;

  services.pipewire = {
    enable = true;
    audio.enable = true;
    wireplumber.enable = true;
  };

  environment.etc."wireplumber/bluetooth.lua.d/51-codecs.lua".text = ''
    bluez_monitor.properties = {
      ["bluez5.enable-sbc-xq"] = true,
      ["bluez5.enable-msbc"] = true,
      ["bluez5.enable-hw-volume"] = true,
      ["bluez5.codecs"] = { "ldac","aptx_hd","aptx","aac","sbc_xq","sbc" }
    }
  '';

}