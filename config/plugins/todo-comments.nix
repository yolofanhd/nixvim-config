{
  plugins = {
    todo-comments = {
      enable = true;
      settings.colors = {
        error = [ "DiagnosticError" "ErrorMsg" "#DC2626" ];
        warning = [ "DiagnosticWarn" "WarningMsg" "#FBBF24" ];
        info = [ "DiagnosticInfo" "#2563EB" ];
        hint = [ "DiagnosticHint" "#10B981" ];
        default = [ "Identifier" "#7C3AED" ];
        test = [ "Identifier" "#FF00FF" ];
      };
    };

    # File tree
    nvim-tree = {
      enable = true;
      openOnSetup = true;
      openOnSetupFile = true;
      autoReloadOnWrite = true;
      diagnostics.enable = true;
    };
  };
}
