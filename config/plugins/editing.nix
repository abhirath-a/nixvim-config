{
  plugins = {
    mini-pairs = {
      enable = true;
      lazyLoad.settings.event = "InsertEnter";
    };
    # grug-far = {
    #   enable = true;
    #   lazyLoad.settings.cmd = "GrugFar";
    # };
    undotree = {
      enable = true;
      # lazyLoad.settings = {
      #   keys = [ "<leader>u" ];
      #   cmd = "UndotreeToggle";
      # };
    };
  };
  keymaps = [
    {
      action = "<cmd>UndotreeToggle<CR>";
      key = "<leader>u";
    }
  ];
}
