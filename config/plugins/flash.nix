{
  plugins.flash.enable = true;
  keymaps = [
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
  ];
}
