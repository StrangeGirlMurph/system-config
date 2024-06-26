{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox # Web browser
    chromium # Web browser
    tor-browser-bundle-bin # Web browser
    thunderbird # Email client
    zathura # PDF viewer
    bitwarden # Password manager
    obsidian # Fancy markdown editor
    libreoffice # Office suite
    discord # Messenger
    signal-desktop # Messenger
    telegram-desktop # Messenger
    whatsapp-for-linux # Messenger
    insync # Google Drive client
    anki # Flashcards
    gimp # Image editor
    spotify # Music player
    unityhub # Unity game engine
    godot_4 # Godot game engine
    steam # Game client
    desmume # Nintendo DS emulator
    blender # 3D modeling
  ];
}
