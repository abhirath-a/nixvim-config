{
  plugins.obsidian = {
    enable = true;
    settings.workspaces = [
      {
        name = "vault";
        path = "~/vault";
      }
    ];
    lazyLoad = {
      enable = true;
      settings.ft = "markdown";
    };
  };
}
