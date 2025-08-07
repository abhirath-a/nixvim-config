{
  imports = [
    ./blink.nix
    ./conform.nix
    ./fugitive.nix
    ./harpoon.nix
    ./lint.nix
    ./fidget.nix
    ./mini.nix
    ./oil.nix
    ./treesitter.nix
    ./undotree.nix
    ./gitsigns.nix
    ./refactoring.nix
    ./surround.nix
  ];
  plugins = {
    lz-n.enable = true;
    wakatime.enable = true;
  };
}
