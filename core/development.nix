{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Text editors/IDEs
    helix # Fancy text editor
    vim # The OG text editor
    vscode # Visual Studio Code

    # Development
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
