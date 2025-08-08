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
      templates.folder = "5 - Templates";
    };
    lazyLoad = {
      enable = true;
      settings.ft = "markdown";
    };
  };
}
