{
  plugins.obsidian = {
    enable = true;
    lazyLoad = {
      enable = true;
      settings.event = [
        "BufReadPre ~/vault/**/*.md"
        "BufNewFile ~/vault/**/*.md"
      ];
    };
  };
}
