{
  plugins = {
    # fzf-lua = {
    #   enable = true;
    #   keymaps = {
    #     "<C-p>" = "files";
    #     "<leader>fg" = "live_grep";
    #     "<leader>fb" = "buffers";
    #     "<leader>fh" = "tags";
    #     "<leader>fc" = "git_commits";
    #     "<leader>fs" = "git_status";
    #     "<leader>fd" = "diagnostics_document";
    #     "<leader>fw" = "diagnostics_workspace";
    #   };
    #   settings.fzf_colors.bg = -1;
    # };
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
