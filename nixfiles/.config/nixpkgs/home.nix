{ config, pkgs, ... }:
let 
    # Import config files
    zshsettings = import ./home/zsh/zsh.nix;
    nvimsettings = import ./home/nvim/nvim.nix;
in
{
  home.username = "tuukka";
  home.homeDirectory = "/home/tuukka";
  programs.home-manager.enable = true;

    # Source extra files that are too big for this one 
    programs.zsh = zshsettings pkgs;
    programs.neovim = nvimsettings pkgs;

    # Settings for XDG user directory, to declutter home directory
    xdg.userDirs = {
        enable = true;
        documents = "$HOME/Documents/";
        download = "$HOME/Downloads";
        videos = "/mnt/sakuya/Videos";
        music = "/mnt/sakuya/Music";
        pictures = "/mnt/sakuya/Pictures";
    };

    # Settings for git
    programs.git = {
        enable = true;
        userName = "cirkku";
        userEmail = "tuukka.t.korhonen@protonmail.com";
        extraConfig = {
            init = { defaultBranch = "master"; };
        };
    };

    # Settings for gpg
    programs.gpg = {
        enable = true;
    };

  home.stateVersion = "22.05";
}

