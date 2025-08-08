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
      settings.event = [
        "BufReadPre ~/vault/**/*.md"
        "BufNewFile ~/vault/**/*.md"
      ];
    };
  };
}
