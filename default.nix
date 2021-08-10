{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/3590f02e7d5760e52072c1a729ee2250b5560746.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.htop
    pkgs.zlib
    pkgs.zsh
    pkgs.vim
    pkgs.git
    pkgs.niv
    pkgs.gnumake
    pkgs.neovim
    pkgs.fzf-zsh
    pkgs.automake
    pkgs.golangci-lint
    pkgs.gosec
    pkgs.go-tools
    pkgs.go
    pkgs.go2nix
  ];

  shellHook = ''
    echo Main source directory
    git config --global user.name "Evgeny Rachlenko"
    git config --global user.email evgeny.rachlenko@gmail.com
    git config --global core.editor vim
    git config --global init.defaultBranch main
    git config --list --show-origin
  '';

MY_ENVIRONMENT_VARIABLE = "main";

}

