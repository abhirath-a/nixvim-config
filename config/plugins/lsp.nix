{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true;
        clangd.enable = true;
        gopls.enable = true;
      };
    };
    fidget = {
      enable = true;
      settings.notification.override_vim_notify = true;
      settings.notification.window.winblend = 0;
    };
  };
}
