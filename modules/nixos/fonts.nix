{ pkgs , ... }:

{
  fonts = {
    packages = with pkgs; [
      iosevka-comfy.comfy
      (nerdfonts.override {fonts = ["NerdFontsSymbolsOnly"];})
    ];

   fontconfig = {
     defaultFonts = {
       serif = [ "Iosevka Comfy" ];
       sansSerif = [ "Iosevka Comfy" ];
       monospace = [ "Iosevka Comfy" ];
     };
   };
  };
}
