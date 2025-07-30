{
  plugins = {
    treesitter.enable = true;
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
  };
}
