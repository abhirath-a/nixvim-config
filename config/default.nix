{ ... }:

{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./lsp.nix
    ./keymaps.nix
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
      smartcase = true;
      winborder = "rounded";
    };
    plugins = {
      # web-devicons.enable = true;
      lz-n.enable = true;
      wakatime.enable = true;
    };

    diagnostic.settings.virtual_text = true;
    colorschemes.catppuccin = {
      enable = true;
      settings.style = "mocha";
      settings.transparent_background = true;
    };
    globals.mapleader = " ";
    globals.localmapleader = "//";

    extraConfigLua = ''
      vim.ui.select = require('mini.pick').ui_select
    '';
  };
}
