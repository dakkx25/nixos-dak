{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        prompt = "'> '";
        icon-theme = "Gruvbox-Plus-Dark";
        fields = "filename,name";
        terminal = "foot -e";
        horizontal-pad = "20";
        inner-pad = "5";
        line-height = "22";
        layer = "overlay";
      };

      border.radius = 2;
    };
  };
}
