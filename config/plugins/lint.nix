{
  plugins = {
    lint = {
      enable = true;
      lintersByFt = {
        astro = [ "eslint" ];
        javascript = [ "eslint" ];
        typescript = [ "eslint" ];
        javascriptreact = [ "eslint" ];
        typescriptreact = [ "eslint" ];
        svelte = [ "eslint" ];
        ruby = [ "rubocop" ];
        protobuf = [ "buf" ];
      };
      lazyLoad.settings.event = [
        "BufReadPre"
        "BufNewFile"
      ];
    };
  };
}
