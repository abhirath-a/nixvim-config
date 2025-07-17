{
  # Import all your configuration modules here
  imports = [
    ./plugins
    ./keymaps.nix
    ./options.nix
  ];
  plugins.web-devicons.enable = true;
  colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
  };
  globals.mapleader = " ";
  globals.localmapleader = "//";

  extraConfigLua = builtins.readFile ./init.lua;
}
