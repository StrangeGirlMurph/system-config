{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty # Terminal emulator
    starship # Shell prompt

    # CLI tools
    ranger # File manager
    bat # Fancy cat
    btop # System monitor
    hyfetch # System info
    hyperfine # Benchmarking
    man # Manual pages
    neofetch # System info
    scc # Line counter

    # Fun
    cbonsai # Bonsai tree
    cmatrix # Matrix
    cowsay # Cowsay
    fortune # Fortune
    lolcat # Rainbow text
    pipes # Pipes
    sl # choo choo!
  ];

  # Shell
  programs.fish.enable = true;
  users.defaultUserShell = pkgs.fish;
}
