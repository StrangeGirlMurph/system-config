{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Packages
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    hyprpaper
    rofi-wayland
    eww
    mako
    libnotify

    # Terminal
    alacritty   # Terminal emulator
    starship    # Shell prompt
    helix       # Fancy text editor
    vim         # Text editor
    man         # Manual pages
    neofetch    # System info
    hyfetch     # System info
    btop        # System monitor
    bat         # Fancy cat

    # Basic Apps
    firefox                 # Web browser
    chromium                # Web browser
    tor-browser-bundle-bin  # Web browser
    zathura                 # PDF viewer
    bitwarden               # Password manager
    obsidian                # Fancy markdown editor
    libreoffice             # Office suite
    discord                 # Messenger
    signal-desktop          # Messenger
    telegram-desktop        # Messenger
    whatsapp-for-linux      # Messenger
    insync                  # Google Drive client
    anki                    # Flashcards
    gimp                    # Image editor
    spotify                 # Music player

    # Development
    git           # Version control
    git-lfs       # Git Large File Storage
    gh            # GitHub CLI
    vscode        # Text editor
    rustup        # Rust
    nodejs_20     # Node.js
    python311     # Python
    deno          # Deno
    hyperfine     # Benchmarking
    docker-client # Containerization

    # Fun CLI Stuff
    cowsay    # Cowsay
    fortune   # Fortune
    lolcat    # Rainbow text
    cmatrix   # Matrix
    cbonsai   # Bonsai tree
    pipes     # Pipes
    sl        # choo choo!

    # Games
    steam                   # Game client
    desmume                 # Nintendo DS emulator
  ];

  # Shell
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;

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

  # x11 & sddm
  services.xserver = {
    enable = true;
    layout = "de";
    xkbVariant = "";
    displayManager.sddm = {
	    enable = true;
    };
  };

  # Window manager
  programs.hyprland = {
    enable = true;
    xwayland.hidpi = true;
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";


  # Users
  users.users.murphy = {
    isNormalUser = true;
    description = "Murphy";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Printing
  services.printing = {
    enable = true;
    drivers = [ pkgs.epson-escpr ];
  };

  # General NixOS options
  system.stateVersion = "23.05";

  # Networking
  networking.hostName = "CASE"; # Define your hostname.
  networking.networkmanager.enable = true;
  services.openssh.enable = true;

  # Time & locale
  time.timeZone = "Europe/Berlin";
  console.keyMap = "de";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Bootloader
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot = {
    enable = true;
    configurationLimit = 2;
  };
  systemd.extraConfig = ''DefaultTimeoutStopSec=6s'';
}
