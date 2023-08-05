{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    deno # Deno
    docker-client # Containerization
    gh # GitHub CLI
    git # Version control
    git-lfs # Git Large File Storage
    nodejs_20 # Node.js
    python311 # Python
    rustup # Rust
  ];
}
