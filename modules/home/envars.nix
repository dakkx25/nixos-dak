{lib, ...}: {
  home.sessionVariables = {
    PATH = "$PATH:$HOME/.local/bin";

    EDITOR = "nvim";
    TERMINAL = "foot";
    BROWSER = "librewolf";

    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_STATE_HOME = "$HOME/.local/state";

    GTK2_RC_FILES = lib.mkForce "$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0";
    LESSHISTFILE = "-";
    INPUTRC = "$XDG_CONFIG_HOME/shell/inputrc";
    GNUPGHOME = "$XDG_DATA_HOME/.local/share/gnupg";
    WINEPREFIX = "$XDG_DATA_HOME/.local/shar}/wineprefixes/default";

    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATFORMTHEME = "gtk2";
    MOZ_ENABLE_WAYLAND = 1;
    MOZ_USE_XINPUT2 = 1;
  };
}
