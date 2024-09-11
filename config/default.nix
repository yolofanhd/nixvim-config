{
  imports = [
    ./auto_cmd.nix
    ./plugins.nix
    ./mappings.nix
    ./options.nix
  ];

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      transparent_mode = true;
      terima_colors = true;
    };
  };

  userCommands = {
    Q.command = "q";
    Q.bang = true;
    Wq.command = "q";
    Wq.bang = true;
    WQ.command = "q";
    WQ.bang = true;
    W.command = "q";
    W.bang = true;
  };

  globals.mapleader = "`";

  highlight = {
    Comment = {
      fg = "#ff00ff";
      bg = "#000000";
      underline = true;
      bold = true;
    };
  };

  clipboard.providers.wl-copy.enable = true;
  performance.combinePlugins.enable = true;
}
