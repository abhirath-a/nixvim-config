{
  plugins.mini = {
    enable = true;
    modules = {
      ai = { };
      pairs = { };
      pick = { };
      extra = { };
      icons = { };
      hipatterns = {
        highlighters = {
          fixme = {
            pattern = "%f[%w]()FIXME()%f[%W]";
            group = "MiniHipatternsFixme";
          };
          hack = {
            pattern = "%f[%w]()HACK()%f[%W]";
            group = "MiniHipatternsHack";
          };
          todo = {
            pattern = "%f[%w]()TODO()%f[%W]";
            group = "MiniHipatternsTodo";
          };
          note = {
            pattern = "%f[%w]()NOTE()%f[%W]";
            group = "MiniHipatternsNote";
          };
        };
      };
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
      action = "<cmd>Pick diagnostic<CR>";
    }
    {
      key = "<leader>fi";
      action = "<cmd>Pick hipatterns<CR>";
    }
  ];
}
