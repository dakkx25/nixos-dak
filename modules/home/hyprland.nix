{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = ",highres,auto,1.25";
      exec-once = "autorun";

      input = {
        kb_layout = "us";
	follow_mouse = "1";
	sensitivity = "0";
	repeat_delay = "300";
	repeat_rate = "50";
	touchpad = {
	  disable_while_typing = "false";
	};
      };

      general = {
        gaps_in = "5";
	gaps_out = "6";
	border_size = "1";
	"col.active_border" = "rgb(d5c4a1)";
	"col.inactive_border" = "rgb(433e3c)";
	layout = "dwindle";
	allow_tearing = "false";
	resize_on_border = "true";
      };

      decoration = {
        rounding = "2";
	drop_shadow = "no";
	active_opacity = "1";
	inactive_opacity = "0.9";
	blur = {
	  enabled = "false";
	};
      };

      animations = {
        enabled = "no";
      };
    };
  };
}
