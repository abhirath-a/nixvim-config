{
  keymaps = [
    {
      key = "<c-k>";
      action = "<cmd>wincmd k<CR>";
    }
    {
      key = "<c-j>";
      action = "<cmd>wincmd j<CR>";
    }
    {
      key = "<c-h>";
      action = "<cmd>wincmd h<CR>";
    }
    {
      key = "<c-l>";
      action = "<cmd>wincmd l<CR>";
    }
    {
      key = "J";
      action = "<cmd>m '>+1<CR>gv=gv'";
      mode = [ "v" ];
    }
    {
      key = "K";
      action = "<cmd>m '<-2<CR>gv=gv'";
      mode = [ "v" ];
    }
    {
      key = "J";
      action = "mzJ`z";
    }
    {
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "[[\"_dP]]";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>y";
      action = "[[\"+y]]";
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = "[[\"+Y]]";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>d";
      action = "\"_d";
    }
    {
      mode = "n";
      key = "<leader>s";
      action = ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>";
    }
  ];
}
