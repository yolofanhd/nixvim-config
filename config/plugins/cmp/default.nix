{
  plugins = {
    copilot-cmp.enable = true; # Enables lua-copilot and copilot cmp integration
    cmp-nvim-lsp.enable = true; # Enable suggestions for LSP
    cmp-path.enable = true; # Enable suggestions for file system paths
    cmp_luasnip.enable = true; # Enable suggestions for code snippets
    cmp-cmdline.enable = false; # Enable autocomplete for command line
    cmp-buffer.enable = true; # Enable suggestions for buffer in current file
    cmp-nvim-lsp-signature-help.enable = true; # Enable signature help for LSP

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
          expand = ''
            function(args)
              require('luasnip').lsp_expand(args.body)
            end
          '';
        };
        sources = [
          {
            name = "copilot";
          }
          {
            name = "nvim_lsp";
          }
          {
            name = "nvim_lsp_signature_help";
          }
          {
            name = "luasnip";
          }
          {
            name = "path";
          }
          {
            name = "buffer";
          }
        ];
      };
    };
  };
}
