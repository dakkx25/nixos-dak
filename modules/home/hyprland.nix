{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''
  # Monitor config
  monitor=,highres,auto,1.25

  # Execute apps at launch
  exec-once = autorun

  # Set programs that you us
  $terminal = foot
  $fileManager = thunar
  $menu = fuzzel

  # Some env vars
  # Default env vars are exported through $HOME/.zprofile
  env = HYPRCURSOR_THEME,HyprBibataModernClassicSVG
  env = HYPRCURSOR_SIZE,24

  input {
    kb_layout = us
    follow_mouse = 1
    sensitivity = 0
    repeat_delay = 300
    repeat_rate = 50
    touchpad {
      disable_while_typing = false
    }
  }

  general {
    gaps_in = 4
    gaps_out = 6
    border_size = 1
    col.active_border = rgb(d5c4a1)
    col.inactive_border = rgb(433e3c)
    layout = dwindle
    allow_tearing = false
    resize_on_border = true
    no_cursor_warps = true
  }

  decoration {
    rounding = 2
    drop_shadow = no
    active_opacity = 1
    inactive_opacity = 0.9
    blur {
      enabled = true
      size = 3
      passes = 1
      vibrancy = 0.1696
    }
  }

  animations {
    enabled = no
  }

  dwindle {
    preserve_split = yes
  }

  gestures {
    workspace_swipe = on
    workspace_swipe_invert = false
  }

  misc {
    force_default_wallpaper = 0
    disable_splash_rendering = true
    disable_hyprland_logo = true
    mouse_move_enables_dpms = true
    key_press_enables_dpms = true
    enable_swallow = true
    swallow_regex = ^(foot)$
  }

  xwayland {
    force_zero_scaling = true
  }

  # Window rules
  windowrulev2 = suppressevent maximize, class:.*
  windowrulev2 = move cursor 0 10, class:^(waybar)$, floating:1 # Waybar systray fix
  windowrulev2 = float, title:^(Picture-in-Picture)$
  windowrulev2 = pin, title:^(Picture-in-Picture)$
  windowrulev2 = size 550 350, title:^(Picture-in-Picture)$
  windowrulev2 = move 985 513, title:^(Picture-in-Picture)$
  windowrulev2 = opacity 0.9 override 0.9 override 0.9 overide, title:^(foot)$
  windowrulev2 = opacity 1 override 1 override, class:^(LibreWolf)$

  # Layer rules
  layerrule = noanim, launcher

  $mainMod = SUPER

  bind = $mainMod, Return, exec, $terminal
  bind = $mainMod, Q, killactive,
  bind = $mainMod, E, exec, $fileManager
  bind = $mainMod, Space, togglefloating,
  bind = $mainMod, D, exec, $menu
  bind = $mainMod, J, togglesplit,
  bind = $mainMod, F, fullscreen
  bind = ALT, Tab, focuscurrentorlast # Alt-tab

  # Fn Keys
  bind = , XF86WakeUp, exec, pidof hyprlock || hyprlock
  bindl= , switch:on:Lid Switch, exec, pidof hyprlock || hyprlock
  bind = , XF86MonBrightnessDown, exec, brightnessctl set 20-
  bind = , XF86MonBrightnessUp, exec, brightnessctl set 20+
  bind = , XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
  bind = , XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
  bind = , XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ -l 1.5
  bind = , XF86AudioPrev, exec, wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-
  bind = , XF86AudioPlay, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
  bind = , XF86AudioNext, exec, wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+ -l 1
  
  bind = $mainMod, W, exec, librewolf --private-window
  bind = $mainMod SHIFT, N, exec, foot -e sh -c "sleep 0.1 && nmtui"
  bind = $mainMod SHIFT, P, exec, foot -e pulsemixer
  bind = $mainMod, N, exec, hyprshade toggle blue-light-filter

  bind = $mainMod, B, exec, reloadbar
  bind = $mainMod, V, exec, clip list
  bind = $mainMod SHIFT, V, exec, clip wipe
  bind = $mainMod, X, exec, syslog
  bind = , Print, exec, screencap
  bind = $mainMod, Period, exec, emoji
  bind = $mainMod, Tab, exec, wintab

  # Move focus with mainMod + arrow keys
  bind = $mainMod, left, movefocus, l
  bind = $mainMod, right, movefocus, r
  bind = $mainMod, up, movefocus, u
  bind = $mainMod, down, movefocus, d

  # Move windows with mainMod + arrow keys
  bind = $mainMod SHIFT, left, movewindow, l
  bind = $mainMod SHIFT, right, movewindow, r
  bind = $mainMod SHIFT, up, movewindow, u
  bind = $mainMod SHIFT, down, movewindow, d

  # Switch workspaces with mainMod + [1-6]
  bind = $mainMod, 1, workspace, 1
  bind = $mainMod, 2, workspace, 2
  bind = $mainMod, 3, workspace, 3
  bind = $mainMod, 4, workspace, 4
  bind = $mainMod, 5, workspace, 5
  bind = $mainMod, 6, workspace, 6

  # Move active window to a workspace with mainMod + SHIFT + [1-6]
  bind = $mainMod SHIFT, 1, movetoworkspacesilent, 1
  bind = $mainMod SHIFT, 2, movetoworkspacesilent, 2
  bind = $mainMod SHIFT, 3, movetoworkspacesilent, 3
  bind = $mainMod SHIFT, 4, movetoworkspacesilent, 4
  bind = $mainMod SHIFT, 5, movetoworkspacesilent, 5
  bind = $mainMod SHIFT, 6, movetoworkspacesilent, 6

  # Move windows with mainMod + LMB and dragging
  bindm = $mainMod, mouse:272, movewindow

  # Resize windows with Alt and arrow keys
  bind = ALT, LEFT, resizeactive, -50 0
  bind = ALT, RIGHT, resizeactive, 50 0
  bind = ALT, UP, resizeactive, 0 -50
  bind = ALT, DOWN, resizeactive, 0 50
    '';
  };
}
