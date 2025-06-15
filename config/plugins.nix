{ pkgs, ... }:
let
  prefix = ./plugins;
in
{
  # Plugins with a little bit more configuration
  imports = [
    (prefix + /cmp.nix)
    (prefix + /codecompanion.nix)
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
    (prefix + /vim-tex.nix)
    (prefix + /snacks.nix)
    (prefix + /rustaceanvim.nix)
  ];

  # Plugins used within a single line
  plugins = {
    auto-session.enable = true;
    commentary = {
      enable = true;
      autoLoad = true;
    };
    crates.enable = true;
    diffview.enable = true;
    flash.enable = true;
    floaterm.enable = true;
    friendly-snippets.enable = true;
    fugitive.enable = true;
    git-conflict.enable = true;
    lualine.enable = true;
    lz-n.enable = true;
    neogen = {
      enable = true;
      languages = {
        c.template = {
          annotation_convention = "doxygen";
        };
        cpp.template.annotation_convention = "doxygen";
      };
    };
    neotest.enable = true;
    nix.enable = true;
    nvim-autopairs.enable = true;
    treesitter.enable = true;
    trouble.enable = true;
    ts-autotag.enable = true;
    undotree.enable = true;
    web-devicons.enable = true;
    which-key.enable = true;
    markview.enable = true;
  };

  # Plugins not contained within nixvim
  extraPlugins = with pkgs.vimPlugins; [
    clipboard-image-nvim
    nvim-web-devicons
  ];
}
