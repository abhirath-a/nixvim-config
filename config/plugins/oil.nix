{
  plugins.oil = {
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
  keymaps = [
    {
      action = "<cmd>Oil --float<CR>";
      key = "<C-n>";
    }
  ];
}
