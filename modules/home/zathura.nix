{
  programs.zathura = {
    enable = true;
    options = {
      sandbox = "none";
      statusbar-h-padding = "0";
      statusbar-v-padding = "0";
      page-padding = "1";
      selection-clipboard = "clipboard";
    };

    mappings = {
      u = "scroll half-up";
      d = "scroll half-down";
      R = "reload";
      r = "rotate";
      i = "recolor";
      g = "goto top";
    };
  };
}

