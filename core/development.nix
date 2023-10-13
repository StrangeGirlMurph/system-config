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
    nodePackages_latest.firebase-tools # Firebase
    flutter # Flutter
    
    # LSP and so on
    nodePackages_latest.typescript-language-server
    nodePackages_latest.svelte-language-server
    python311Packages.python-lsp-server
    vscode-langservers-extracted # HTML, CSS, ESLint, JSON, Markdown 
    nil # Nix LSP
    marksman # Markdown LSP
  ];
}
