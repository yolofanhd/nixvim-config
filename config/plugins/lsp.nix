{
  plugins = {
    lsp-format.enable = true;
    lsp-lines.enable = true;
    lsp-status.enable = true;

    lsp = {
      enable = true;
      servers = {
        bashls.enable = true; # Bash
        clangd.enable = true; # C/C++
        csharp-ls.enable = true; # C#
        cssls.enable = true; # CSS
        dockerls.enable = true; # Docker
        gopls.enable = true; # Go
        html.enable = true; # HTML
        marksman.enable = true; # Markdown
        nil-ls.enable = true; # Nix
        pyright.enable = true; # Python
        tailwindcss.enable = true; # TailwindCSS
        tsserver.enable = true; # TS/JS
      };
    };

    # Extra configuration for lsp servers
    lsp.servers = {
      lua-ls = {
        enable = true;
        settings.telemetry.enable = false;
      };
      rust-analyzer = {
        enable = true;
        installRustc = true;
        installCargo = true;
        settings = {
          cargo = {
            features = "all";
          };
          procMacro = {
            enable = true;
            ignored = {
              leptos_macro = [ "server" "component" ];
            };
          };
        };
      };
    };
  };
}
