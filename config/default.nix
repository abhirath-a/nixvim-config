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

    colorschemes.catppuccin = {
      enable = true;
      settings.style = "mocha";
    };
    globals.mapleader = " ";
    globals.localmapleader = "//";

    extraConfigLua = builtins.readFile ./init.lua;
  };
}
