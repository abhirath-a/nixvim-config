{
  plugins.mini = {
    enable = true;
    modules = {
      pairs = { };
      pick = { };
      extra = { };
      icons = { };
    };
  };
  keymaps = [
    {
      key = "<C-p>";
      action = "<cmd>Pick files<CR>";
    }
    {
      key = "<leader>fg";
      action = "<cmd>Pick grep_live<CR>";
    }
    {
      key = "<leader>fb";
      action = "<cmd>Pick buffers<CR>";
    }
    {
      key = "<leader>fh";
      action = "<cmd>Pick help<CR>";
    }
    {
      key = "<leader>fc";
      action = "<cmd>Pick git_commits<CR>";
    }
    {
      key = "<leader>fw";
      action = "<cmd>Pick diagnostics<CR>";
    }
  ];
}
