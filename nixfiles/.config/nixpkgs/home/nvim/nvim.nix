#originally made by notusknot
{ pkgs, config, ... }:

let
    tokyonight = pkgs.vimUtils.buildVimPlugin {
        name = "tokyonight";
        src = pkgs.fetchFromGitHub {
            owner = "folke";
            repo = "tokyonight.nvim";
            rev = "8223c970677e4d88c9b6b6d81bda23daf11062bb";
            sha256 = "1rzg0h0ab3jsfrimdawh8vlxa6y3j3rmk57zyapnmzpzllcswj0i";
        };
    };

in
{
    enable = true;
    plugins = with pkgs.vimPlugins; [
        # File tree
        nvim-web-devicons 
        nvim-tree-lua

        # LSP
        nvim-lspconfig

        # Languages
        vim-nix

        # Eyecandy 
        nvim-treesitter
        bufferline-nvim
        lualine-nvim
        nvim-colorizer-lua
        tokyonight
        pears-nvim

        # Lsp and completion
        nvim-lspconfig
        nvim-compe

        # Telescope
        telescope-nvim

        # Indent lines
        indent-blankline-nvim
    ];
    extraConfig = ''
        luafile /home/tuukka/.config/nixpkgs/home/nvim/lua/settings.lua
    '';
}

