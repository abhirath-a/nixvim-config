{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      formatters_by_ft = {
        astro = [ "prettier" ];
        javascript = [ "prettier" ];
        typescript = [ "prettier" ];
        javascriptreact = [ "prettier" ];
        typescriptreact = [ "prettier" ];
        svelte = [ "prettier" ];
        css = [ "prettier" ];
        html = [ "prettier" ];
        json = [ "prettier" ];
        yaml = [ "prettier" ];
        markdown = [ "prettier" ];
        graphql = [ "prettier" ];
        lua = [ "stylua" ];
        java = [ "google-java-format" ];
        ruby = [ "rubocop" ];
        eruby = [ "erb_format" ];
        protobuf = [ "buf" ];
      };
      format_after_save = {
        lsp_fallback = true;
        async = true;
        timeout_ms = 500;
      };
      lazyLoad.settings = {
        event = [
          "BufReadPre"
          "BufNewFile"
        ];
        keys = [
          "<leader>gf"
        ];
        cmd = "ConformInfo";
      };
    };
  };
  keymaps = [
    {
      action = "<cmd>lua require('conform').format({ lsp_fallback = true, async = true, timeout_ms = 500 })<cr>";
      key = "<leader>gf";
    }
  ];
}
