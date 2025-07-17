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
    };
    flash.enable = true;
    harpoon.enable = true;
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
    };
  };
  keymaps = [
    {
      action = "<cmd>Oil --float<CR>";
      key = "<C-n>";
    }
    {
      action = "<cmd>lua require('flash').jump()<cr>";
      key = "s";
      mode = [
        "n"
        "x"
        "o"
      ];
    }
    {
      action = "<cmd>lua require('flash').treesitter()<cr>";
      key = "S";
      mode = [
        "n"
        "x"
        "o"
      ];
    }
    {
      action = "<cmd>lua require('flash').remote()<cr>";
      key = "r";
      mode = [
        "o"
      ];
    }
    {
      action = "<cmd>lua require('flash').treesitter_search()<cr>";
      key = "R";
      mode = [
        "x"
        "o"
      ];
    }
    {
      action = "<cmd>lua require('flash').toggle()<cr>";
      key = "<c-s>";
      mode = [
        "c"
      ];
    }
    {
      action = "<cmd>lua require('harpoon'):list():add()<cr>";
      key = "<leader>a";
    }
    {
      action = "<cmd>require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())";
      key = "<C-e>";
    }
    {
      action = "require('harpoon'):list():select(1)";
      key = "<leader>q";
    }
    {
      action = "require('harpoon'):list():select(2)";
      key = "<leader>w";
    }
    {
      action = "require('harpoon'):list():select(3)";
      key = "<leader>e";
    }
    {
      action = "require('harpoon'):list():select(4)";
      key = "<leader>r";
    }
  ];
}
