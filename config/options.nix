{
  options = {
    number = true;
    relativenumber = true;
    showtabline = 0;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;
    expandtab = true;
    smartindent = true;
    wrap = false;
    swapfile = false;
    backup = false;
    undodir = "${builtins.getEnv "HOME"}/.vim/undodir";
    undofile = true;
    hlsearch = true;
    incsearch = true;
    termguicolors = true;
    scrolloff = 8;
    signcolumn = "yes";
    updatetime = 50;
  };
}
