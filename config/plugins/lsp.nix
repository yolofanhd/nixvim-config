{
  plugins = {
    lsp-format.enable = true;
    lsp-lines.enable = true;
    lsp-status.enable = true;

    lsp = {
      enable = true;
      servers = {
        # Average webdev LSPs
        tsserver.enable = true; # TS/JS
        cssls.enable = true; # CSS
        tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML

        # Python
        pyright.enable = true;

        # Markdown
        marksman.enable = true;

        # Nix
        nil-ls.enable = true;

        # Docker
        dockerls.enable = true;

        # Bash
        bashls.enable = true;

        # C/C++
        clangd.enable = true;

        # C#
        csharp-ls.enable = true;

        # Lua
        lua-ls = {
          enable = true;
          settings.telemetry.enable = false;
        };

        # Rust
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

        # Golang
        gopls = {
          enable = true;
        };
      };
    };
  };
}
