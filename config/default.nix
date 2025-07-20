{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
  ];
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
}
