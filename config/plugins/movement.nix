{
  plugins = {
    fzf-lua = {
      enable = true;
      keymaps = {
        "<C-p>" = "files";
        "<leader>fg" = "live_grep";
        "<leader>fb" = "buffers";
        "<leader>fh" = "tags";
        "<leader>fc" = "git_commits";
        "<leader>fs" = "git_status";
        "<leader>fd" = "diagnostics_document";
        "<leader>fw" = "diagnostics_workspace";
      };
      settings.fzf_colors.bg = -1;
    };
    flash = {
      enable = true;
      # lazyLoad.settings.keys = [
      #   "s"
      #   "S"
      #   "r"
      #   "R"
      # ];
    };
    harpoon = {
      enable = true;
      # lazyLoad.settings.keys = [
      #   "<c-s>"
      #   "<leader>a"
      #   "<c-e>"
      #   "<leader>q"
      #   "<leader>w"
      #   "<leader>e"
      #   "<leader>r"
      # ];
    };
    oil = {
      enable = true;
      settings = {
        keymaps = {
          "<CR>" = "actions.select";
          "<Left>" = "actions.parent";
          "<Right>" = "actions.select";
        };
        default_file_explorer = true;
        skip_confirm_for_simple_edits = true;
        view_options = {
          show_hidden = true;
          natural_order = true;
        };
        win_options.wrap = true;
      };
      lazyLoad.settings.keys = [ "<C-n>" ];
      lazyLoad.settings.cmd = "Oil";
    };
  };
  keymaps = [
    {
      action = "<cmd>Oil --float<CR>";
      key = "<C-n>";
    }

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
