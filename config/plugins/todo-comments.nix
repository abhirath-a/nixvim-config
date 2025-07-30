{
  plugins = {
    todo-comments = {
      enable = true;
      lazyLoad.settings = {
        event = [
          "BufReadPre"
          "BufNewFile"
        ];
        cmd = "TodoLocList";
        keys = [ "<leader>st" ];
      };
    };

  };
  keymaps = [
    {
      action = "<cmd>TodoLocList<CR>";
      key = "<leader>st";
    }
  ];
}
