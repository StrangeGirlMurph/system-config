{ config, pkgs, ... }:

{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "application/pdf" = "firefox.desktop";
    };
  };

  gtk.enable = true;
  #gtk.theme = {};
  #gtk.iconTheme = {};

  qt.enable = true;
  qt.platformTheme = "gtk";
  qt.style = {
    name = "breeze";
    package = pkgs.breeze-qt5;
  };

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    ipc = off
    preload = ~/.config/hypr/wallpaper.jpg
    wallpaper = ,~/.config/hypr/wallpaper.jpg
  '';

  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "alacritty"
      "hyprpaper"
      "mako &"
    ];

    "$mainMod" = "SUPER";
    bind = [
      "$mainMod, T, exec, alacritty"
      "$mainMod, E, exec, dolphin"
      "$mainMod, F, exec, firefox"
      "$mainMod, S, exec, spotify"
      "$mainMod, D, exec, discord"
      "$mainMod, A, exec, neovide"
      "$mainMod, R, exec, obsidian"
      "$mainMod, C, exec, calendar"
      "$mainMod, Y, exec, betterbird"
      "$mainMod, N, exec, notion"

      "ALT, SPACE, exec, rofi -show drun -show-icons"
      "$mainMod_Shift, Q, exec, flameshot gui"
      ", Print, exec, flameshot screen"
      "SUPER, V, exec, cliphist list | wofi --show dmenu | cliphist decode | wl-copy "

      "$mainMod, M, exit,"
      "$mainMod, Q, killactive,"
      "$mainMod, V, togglefloating,"
      "$mainMod, P, pseudo, "
      "$mainMod, J, togglesplit, "
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    general = {
      layout = "dwindle";
      gaps_in = 6;
      gaps_out = 6;
      border_size = 1;
      col = {
        actice_border = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        inactive_border = "rgba(595959aa)";
      };
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    decoration = {
      rounding = 10;
      blur = true;
      blur_size = 3;
      blur_passes = 1;
      blur_new_optimizations = true;

      drop_shadow = true;
      shadow_range = 4;
      shadow_render_power = 3;
      col.shadow = "rgba(1a1a1aee)";
    };

    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    input = {
      kb_layout = "de";
      kb_options = "caps:escape";
      follow_mouse = 1;
      sensitivity = 0;
      touchpad.natural_scroll = true;
    };


  };
}
