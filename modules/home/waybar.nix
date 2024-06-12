{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 28;
        reload_style_on_change = true;

        modules-left = ["hyprland/workspaces" "hyprland/window"];
        modules-right = ["network" "wireplumber" "battery" "clock#time" "tray"];

        "hyprland/window" = {
          format = "{}";
          all-outputs = true;
          icon = true;
          icon-size = 16;
          on-click = "wintab";
        };

        "network" = {
          interval = 60;
          format-wifi = "<span foreground='#a89984'>{icon} </span>{essid}";
          format-disconnected = "<span foreground='#a89984'>󰤭 </span>";
          format-ethernet = "<span foreground='#a89984'>󰛳  </span>Connected";
          on-click = "foot -e sh -c 'sleep 0.1 && nmtui'";
          format-icons = ["󰤯 " "󰤟 " "󰤢 " "󰤥 " "󰤨 "];
        };

        "wireplumber" = {
          format = "<span foreground='#a89984'>{icon}  </span>{volume}%";
          format-muted = "<span foreground='#a89984'>󰝟  </span>{volume}%";
          on-click = "foot -e pulsemixer";
          format-icons = {
            default = ["󰕿" "󰖀" "󰕾"];
          };
        };

        "clock#time" = {
          interval = 60;
          format = "{:%I :%M %p}";
          tooltip-format = "{calendar}";
          calendar = {
            format = {
              days = "<span color='#a89984'><b>{}</b></span>";
              weekdays = "<span color='#a89984'>{}</span>";
              today = "<span color='#d5c4a1'>{}</span>";
            };
          };
        };

        "battery" = {
          interval = 30;
          format = "<span foreground='#a89984'>{icon} </span>{capacity}%";
          format-charging = "<span foreground='#a89984'>󰂄 </span>{capacity}%";
          format-icons = ["󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
        };

        "tray" = {
          icon-size = 14;
          spacing = 10;
        };
      };
    };

    style = ''
      * {
        border: none;
	font-family: Iosevka Comfy;
	font-size: 13px;
	min-height: 0;
      }

      tooltip {
        background: #282828;
	border: 2px solid #433e3c;
        border-radius: 0px;
      }

      tooltip label {
	color: #d5c4a1;
      }

      window#waybar {
	background: rgba(40, 40, 40, 0.8);
	color: #d5c4a1;
      }

      #workspaces,
      #window {
        background: transparent;
	margin-right: 0px;
	margin-left: 0px;
	margin-top: 0px;
	margin-bottom: 0px;
	border-radius: 0px;
      }

      #workspaces {
	padding: 0 0em;
      }

      #workspaces button {
	color: #d5c4a1;
	background: transparent;
	border-radius: 0px;
      }

      #workspaces button.active {
	background: rgba(168, 153, 132, 0.3);
	border-radius: 0px;
      }

      #workspaces button:hover {
	background: rgba(168, 153, 132, 0.5);
	border-radius: 0px;
      }

      #window {
	padding: 0 0.8em;
      }

      #clock:hover,
      #battery:hover,
      #wireplumber:hover,
      #network:hover {
	background: rgba(168, 153, 132, 0.3);
	border-radius: 0px;
      }

      #clock,
      #battery,
      #wireplumber,
      #network,
      #tray {
	color: #d5c4a1;
	background: transparent;
	padding: 0 0.8em;
	margin-right: 0px;
	margin-left: 0px;
	margin-top: 0px;margin-bottom: 0px;
	border-radius: 0px;
      }
    '';
  };
}
