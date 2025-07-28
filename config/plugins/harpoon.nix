{
  plugins.harpoon.enable = true;
  keymaps = [
    {
      action = "<cmd>lua require('harpoon'):list():add()<cr>";
      key = "<leader>a";
    }
    {
      action = "<cmd>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<cr>";
      key = "<C-e>";
    }
    {
      action = "<cmd>lua require('harpoon'):list():select(1)<cr>";
      key = "<leader>q";
    }
    {
      action = "<cmd>lua require('harpoon'):list():select(2)<cr>";
      key = "<leader>w";
    }
    {
      action = "<cmd>lua require('harpoon'):list():select(3)<cr>";
      key = "<leader>e";
    }
    {
      action = "<cmd>lua require('harpoon'):list():select(4)<cr>";
      key = "<leader>r";
    }
  ];
}
