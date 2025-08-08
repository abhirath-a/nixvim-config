{
  plugins.obsidian = {
    enable = true;
    settings = {
      completion.blink = true;

      workspaces = [
        {
          name = "vault";
          path = "~/vault";
        }
      ];
    };
    lazyLoad = {
      enable = true;
      settings.ft = "markdown";
    };
  };
}
