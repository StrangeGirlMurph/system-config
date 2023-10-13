{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  networking.hostName = "TARS";

  environment.systemPackages = with pkgs; [
    # Windows Drive
    ntfs3g

    # Game development
    unityhub # Unity game engine
    godot_4 # Godot game engine

    # Games
    steam # Game client
    desmume # Nintendo DS emulator

    # 3D 
    blender
  ];
}
