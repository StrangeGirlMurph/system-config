{ config, pkgs, ... }:

{
  # > fish
  programs.fish = {
    enable = true;
    shellAliases = {
      cls = "clear";
      ll = "ls -l";
      la = "ls -la";
      code = "code .";
      update-system = "fish ~/system-config/update-system.fish";
      update-packages = "nix flake update; sudo nixos-rebuild switch";
      gs = "git status";
      gc = "git commit -am";
    };
    shellInit = ''
      set -g fish_greeting
      export PATH="$HOME/.cargo/bin:$PATH"
      starship init fish | source
    '';
  };

  # > starship
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      format = "$directory$all$character";

      character = {
        error_symbol = "[»](bold red)";
        success_symbol = "[»](bold green)";
      };

      directory = {
        truncation_symbol = "../";
        style = "bold cyan";
        truncate_to_repo = false;
        truncation_length = 4;
        read_only = " ";
      };

      time = {
        style = "green";
        format = "[$time]($style) ";
        time_format = "%H:%M";
        disabled = true;
      };
    };
  };

  # > alacritty
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        dimensions = {
          columns = 120;
          lines = 30;
        };
        padding = {
          x = 8;
          y = 8;
        };
        decorations = "full";
        opacity = 0.7;
        dynamic_title = true;
      };

      scrolling = {
        history = 10000;
        multiplier = 2;
      };

      font = {
        normal = {
          style = "Regular";
        };
        bold = {
          style = "Bold";
        };
        italic = {
          style = "Bold";
        };
        size = 14.0;
      };

      cursor = {
        style = {
          shape = "Beam";
          blinking = "On";
        };
        blink_interval = 750;
      };

      shell.program = "fish";
    };
  };

  # > hyfetch
  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "transgender";
      mode = "rgb";
      light_dark = "dark";
      lightness = 0.7;
      color_align = {
        mode = "horizontal";
        custom_colors = "[]";
      };
      backend = "neofetch";
    };
  };
}






