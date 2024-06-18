{ config, pkgs, ... }:

{
  # Gnome
  dconf.enable = true;
  dconf.settings = {
    "org/gnome/desktop/interface".color-scheme = "prefer-dark";
    "org/gnome/shell" = {
      favorite-apps = [
        "firefox.desktop"
        "code.desktop"
        "alacritty.desktop"
        "spotify.desktop"
        "virt-manager.desktop"
        "org.gnome.Nautilus.desktop"
      ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      enable-hot-corners = false;
    };

    "org/gnome/desktop/wm/preferences" = {
      workspace-names = [ "Main" ];
    };

    /* "org/gnome/desktop/background" = {
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/vnc-l.png";
      };

      "org/gnome/desktop/screensaver" = {
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/vnc-d.png";
      primary-color = "#3465a4";
      secondary-color = "#000000";
    }; */

    # Extensions
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        blur-my-shell.extensionUuid
        pop-shell.extensionUuid
        vitals.extensionUuid
        impatience.extensionUuid
        just-perfection.extensionUuid
      ];
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      brightness = 0.75;
      noise-amount = 0;
    };
  };
};

}
