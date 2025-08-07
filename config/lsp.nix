{
  plugins.lspconfig.enable = true;
  lsp = {
    servers = {
      nil_ls.enable = true;
      gopls.enable = true;
    };
    keymaps = [
      {
        key = "K";
        lspBufAction = "hover";
      }
      {
        key = "gd";
        lspBufAction = "definition";
      }
      {
        key = "gD";
        lspBufAction = "declaration";
      }
      {
        key = "gi";
        lspBufAction = "implementation";
      }
      {
        key = "go";
        lspBufAction = "type_definition";
      }
      {
        key = "gr";
        lspBufAction = "references";
      }
      {
        key = "gs";
        lspBufAction = "signature_help";
      }
      {
        key = "<F2>";
        lspBufAction = "rename";
      }
      {
        key = "<F3>";
        lspBufAction = "format";
        mode = [
          "n"
          "x"
        ];
      }
      {
        key = "<leader>ca";
        lspBufAction = "code_action";
      }
    ];
  };
}
