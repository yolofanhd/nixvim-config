{ pkgs, ... }:
let
  prefix = ./plugins;
in
{
  # Plugins with a little bit more configuration
  imports = [
    (prefix + /cmp.nix)
    (prefix + /dap.nix)
    (prefix + /gitsigns.nix)
    (prefix + /lint.nix)
    (prefix + /lsp.nix)
    (prefix + /luasnip.nix)
    (prefix + /markdown-preview.nix)
    (prefix + /none-ls.nix)
    (prefix + /notify.nix)
    (prefix + /nvim-tree.nix)
    (prefix + /startup.nix)
    (prefix + /telescope.nix)
    (prefix + /todo-comments.nix)
  ];

  # Plugins used within a single line
  plugins = {
    lualine.enable = true;
    treesitter.enable = true;
    ts-autotag.enable = true;
    nvim-autopairs.enable = true;
    persistence.enable = true;
    trouble.enable = true;
    commentary.enable = true;
    floaterm.enable = true;
    friendly-snippets.enable = true;
    fugitive.enable = true;
    neogen.enable = true;
    neotest.enable = true;
    git-conflict.enable = true;
    flash.enable = true;
    nix.enable = true;
    crates-nvim.enable = true;
    rustaceanvim.enable = true;
    which-key.enable = true;
    undotree.enable = true;
    diffview.enable = true;
  };

  # Plugins not contained within nixvim
  extraPlugins = with pkgs.vimPlugins; [
    nvim-web-devicons
    clipboard-image-nvim
  ];
}
