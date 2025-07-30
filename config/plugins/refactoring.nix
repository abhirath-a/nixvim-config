{
  plugins.refactoring.enable = true;
  keymaps = [
    {
      key = "<leader>re";
      action = "<cmd>Refactor extract ";
      mode = [
        "n"
        "x"
      ];
    }
    {
      key = "<leader>rf";
      action = "<cmd>Refactor extract_to_file ";
      mode = [
        "n"
        "x"
      ];
    }
    {
      key = "<leader>rv";
      action = "<cmd>Refactor extract_var ";
      mode = [
        "n"
        "x"
      ];
    }
    {
      key = "<leader>ri";
      action = "<cmd>Refactor inline_var";
      mode = [
        "n"
        "x"
      ];
    }
    {
      key = "<leader>rI";
      action = "<cmd>Refactor inline_func";
      mode = [
        "n"
        "x"
      ];
    }
    {
      key = "<leader>rb";
      action = "<cmd>Refactor extract_block";
      mode = [
        "n"
        "x"
      ];
    }
    {
      key = "<leader>rbf";
      action = "<cmd>Refactor extract_block_to_file";
      mode = [
        "n"
        "x"
      ];
    }
  ];
}
