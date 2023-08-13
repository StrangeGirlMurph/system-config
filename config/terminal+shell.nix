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
  };
  programs.starship.settings = {
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

    c.symbol = " ";
    docker_context.symbol = " ";
    git_branch.symbol = " ";
    golang.symbol = " ";
    hg_branch.symbol = " ";
    java.symbol = " ";
    julia.symbol = " ";
    lua.symbol = " ";
    memory_usage.symbol = " ";
    nix_shell.symbol = " ";
    nodejs.symbol = " ";
    package.symbol = " ";
    python.symbol = " ";
    rust.symbol = " ";
  };

  # > alacritty
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
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
      size = 12.0;
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

  # > hyfetch
  programs.hyfetch.enable = true;
  programs.hyfetch.settings = {
    preset = "transgender";
    mode = "rgb";
    light_dark = "dark";
    lightness = 0.7;
    color_align = {
      mode = "horizontal";
      custom_colors = "[]";
      fore_back = "null";
    };
    backend = "neofetch";
  };
}






