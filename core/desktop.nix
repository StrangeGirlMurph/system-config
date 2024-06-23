{ config, pkgs, ... }:

{
  # X11/xorg
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    xkb.layout = "de";
    # xkb.variant = "caps:escape";
    libinput.enable = true;
  };

  # Printing
  services.printing = {
    enable = true;
    drivers = [ pkgs.epson-escpr ];
  };

  # Sound
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Fonts
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      corefonts
      fira-code
      fira-code-symbols
      font-awesome
    ];
  };

  # Gnome
  environment.gnome.excludePackages = (with pkgs; [
    gnome-tour
    gedit
  ]) ++ (with pkgs.gnome; [
    gnome-terminal
    epiphany
    geary
  ]);

  environment.systemPackages = with pkgs.gnomeExtensions; [
    blur-my-shell
    pop-shell
    vitals
    impatience
    just-perfection
  ];

  /* xdg.mime.defaultApplications = {
    "default-web-browser" = "firefox.desktop";
    "text/html" = "firefox.desktop";
    "x-scheme-handler/http" = "firefox.desktop";
    "x-scheme-handler/https" = "firefox.desktop";
    "x-scheme-handler/about" = "firefox.desktop";
    "x-scheme-handler/unknown" = "firefox.desktop";
  }; */

  environment.sessionVariables = {
    EDITOR = "helix";
    VISUAL = "code";
    BROWSER = "firefox";
    TERMINAL = "alacritty";
  };
}
