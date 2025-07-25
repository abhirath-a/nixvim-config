{ pkgs, ... }:

{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./keymaps.nix
    # ./options.nix
  ];

  config = {
    opts = {
      number = true;
      relativenumber = true;
      showtabline = 0;
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      smartindent = true;
      wrap = false;
      swapfile = false;
      backup = false;
      undofile = true;
      hlsearch = true;
      incsearch = true;
      termguicolors = true;
      scrolloff = 8;
      signcolumn = "yes";
      updatetime = 50;
    };
    plugins = {
      web-devicons.enable = true;
      lz-n.enable = true;
    };

    # colorschemes.tokyonight = {
    #   enable = true;
    #   settings.style = "night";
    # };
    globals.mapleader = " ";
    globals.localmapleader = "//";

    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        name = "vim-gotham";
        src = pkgs.fetchFromGitHub {
          owner = "whatyouhide";
          repo = "vim-gotham";
          rev = "747ee82960b4a7ed75ac133bb84bfc02b5ac9e27";
          hash = "sha256-6xJPZNbgFdyt+J14+8sn5UVAozEsLvpyOftdqldWuaA=";
        };
      })
    ];

    extraConfigLua = builtins.readFile ./init.lua;
  };
}
