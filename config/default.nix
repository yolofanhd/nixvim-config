{
  imports = [
    ./plugins.nix
    ./mappings.nix
    ./options.nix
  ];

  clipboard.providers.wl-copy.enable = true;

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      transparent_mode = true;
      terima_colors = true;
    };
  };

  performance.combinePlugins.enable = true;
}
