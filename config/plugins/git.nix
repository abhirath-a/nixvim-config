{
  plugins = {
    fugitive = {
      enable = true;
    };
    todo-comments = {
      enable = true;
      lazyLoad.settings = {
        event = [
          "BufReadPre"
          "BufNewFile"
        ];
        cmd = "TodoFzfLua";
        keys = [ "<leader>st" ];
      };
    };
  };
  keymaps = [
    {
      action = "<cmd>Git<CR>";
      key = "<leader>gs";
    }
    {
      action = "<cmd>TodoFzfLua<CR>";
      key = "<leader>st";
    }
  ];
}
