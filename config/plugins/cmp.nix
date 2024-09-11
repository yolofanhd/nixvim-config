{
  plugins = {
    cmp-nvim-lsp.enable = true; # Enable suggestions for LSP
    cmp-buffer.enable = true; # Enable suggestions for buffer in current file
    cmp-path.enable = true; # Enable suggestions for file system paths
    cmp_luasnip.enable = true; # Enable suggestions for code snippets
    cmp-cmdline.enable = false; # Enable autocomplete for command line

    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
             ["<C-Space>"] = cmp.mapping.complete(),
             ["<C-n>"] = cmp.mapping.select_next_item(),
             ["<C-p>"] = cmp.mapping.select_prev_item(),
             ["<C-b>"] = cmp.mapping.scroll_docs(-4),
             ["<C-f>"] = cmp.mapping.scroll_docs(4),
             ["<C-e>"] = cmp.mapping.close(),
             ["<C-y>"] = cmp.mapping.confirm({
                 behavior = cmp.ConfirmBehavior.Insert,
                 select = true
               })
             })
          '';
        };
        snippet = {
          expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        };
        sources = {
          __raw = ''
            cmp.config.sources({
              { name = 'nvim_lsp' },
              { name = 'vsnip' },
              { name = 'luasnip' },
            }, {
              { name = 'buffer' },
            })
          '';
        };
      };
    };
  };
}
