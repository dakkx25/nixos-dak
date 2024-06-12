{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    autocd = true;
    enableCompletion = true;

    history = {
      expireDuplicatesFirst = true;
      ignoreAllDups = true;
      share = false;
      size = 100000;
      save = 100000;
      path = "$HOME/.cache/zsh/history";
    };

    shellAliases = {
      cp = "cp -iv";
      mv = "mv -iv";
      rm = "rm -vI";
      mkdir = "mkdir -pv";
      yt = "yt-dlp --embed-metadata";
      yta = "yt -x -f bestaudio/best";
      ffmpeg = "ffmpeg -hide_banner";
      ls = "ls -hAN --color=auto --group-directories-first";
      grep = "grep --color=auto";
      ka = "killall";
      g = "git";
      sdn = "shutdown -h now";
      vim = "nvim";
      se = "sudoedit";
    };

    plugins = [
      {
        name = "zsh-fast-syntax-highlighting";
        file = "share/zsh/site-functions/fast-syntax-highlighting.plugin.zsh";
        src = pkgs.zsh-fast-syntax-highlighting;
      }
    ];

    initExtra = ''
      autoload -U colors && colors
      PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
      stty stop undef
      setopt interactive_comments

      zstyle ':completion:*' menu select
      zmodload zsh/complist
      _comp_options+=(globdots)

      echo -ne '\e[5 q'
      preexec() { echo -ne '\e[5 q' ;}
      precmd() { echo -ne '\e[5 q' ;}

      unsetopt PROMPT_SP 2>/dev/null

      bindkey '^a' beginning-of-line
      bindkey '^e' end-of-line
      bindkey "^[[3~" delete-char
      bindkey -M vicmd '^[[3~' vi-delete-char
      bindkey -M visual '^[[3~' vi-delete
    '';

    profileExtra = ''
      [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Hyprland >/dev/null 2>&1 && exec dbus-run-session Hyprland
    '';
  };
}
