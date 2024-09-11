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

  performance.combinePlugins.enable = true;
}
