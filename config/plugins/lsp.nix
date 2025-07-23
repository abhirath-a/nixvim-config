{
  plugins = {
    treesitter = {
      enable = true;
      settings.auto_install = true;
      # lazyLoad.settings = {
      #   event = "BufReadPost";
      #   cmd = [
      #     "TSUpdateSync"
      #     "TSUpdate"
      #     "TSInstall"
      #   ];
      # };
    };
    ts-comments.enable = true;
    ts-autotag = {
      enable = true;
      lazyLoad.settings.ft = [
        "astro"
        "glimmer"
        "handlebars"
        "html"
        "javascript"
        "jsx"
        "javascriptreact"
        "markdown"
        "php"
        "rescript"
        "svelte"
        "tsx"
        "twig"
        "typescript"
        "typescriptreact"
        "vue"
        "xml"
      ];
    };
    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true;
        clangd.enable = true;
      };
    };
    fidget = {
      enable = true;
      settings.notification.override_vim_notify = true;
    };
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
      };
      lazyLoad.settings.event = [
        "BufReadPre"
        "BufNewFile"
      ];
    };
    conform-nvim = {
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
    friendly-snippets.enable = true;
    # mini = {
    #   enable = true;
    #   modules = {
    #     snippets = {
    #       snippets.__raw = "{require('mini.snippets').gen_loader.from_lang()}";
    #     };
    #     completion = {
    #       set_vim_settings = false;
    #     };
    #   };
    # };
    blink-copilot.enable = true;
    blink-cmp = {
      enable = true;
      # lazyLoad.settings.event = "InsertEnter";
      settings = {
        keymap.preset = "default";
        cmdline = {
          keymap.preset = "inherit";
          completion.menu.auto_show = true;
        };
        completion = {
          menu = {
            border = "rounded";
            winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None";
          };
          documentation = {
            auto_show = true;
            auto_show_delay_ms = 250;
            treesitter_highlighting = true;
            window.border = "rounded";
          };
        };
        signature = {
          enabled = true;
          window.border = "single";
        };
        appearance = {
          use_nvim_cmp_as_default = true;
          nerd_font_variant = "mono";
          kind_icons = {
            Copilot = "";
            Text = "󰉿";
            Method = "󰊕";
            Function = "󰊕";
            Constructor = "󰒓";
            Field = "󰜢";
            Variable = "󰆦";
            Property = "󰖷";
            Class = "󱡠";
            Interface = "󱡠";
            Struct = "󱡠";
            Module = "󰅩";
            Unit = "󰪚";
            Value = "󰦨";
            Enum = "󰦨";
            EnumMember = "󰦨";
            Keyword = "󰻾";
            Constant = "󰏿";
            Snippet = "󱄽";
            Color = "󰏘";
            File = "󰈔";
            Reference = "󰬲";
            Folder = "󰉋";
            Event = "󱐋";
            Operator = "󰪚";
            TypeParameter = "󰬛";
          };
        };

        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "copilot"
          ];
          providers = {
            copilot = {
              name = "copilot";
              module = "blink-copilot";
              score_offset = 100;
              async = true;
              transform_items.__raw = ''
                    function(_, items)
                  local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
                  local kind_idx = #CompletionItemKind + 1
                  CompletionItemKind[kind_idx] = "Copilot"
                  for _, item in ipairs(items) do
                    item.kind = kind_idx
                  end
                  return items
                end
              '';
            };
          };
        };
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
