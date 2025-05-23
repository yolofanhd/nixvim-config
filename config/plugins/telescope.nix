{
  plugins = {
    telescope = {
      enable = true;
      extensions = {
        file-browser.enable = true;
        fzf-native.enable = true;
        undo = {
          enable = true;
          settings = {
            side_by_side = true;
            layout_strategy = "vertical";
            layout_config = {
              preview_height = 0.8;
            };
          };
        };
      };
      settings = {
        defaults = {
          file_ignore_patterns = [
            "^.git/"
            "^.mypy_cache/"
            "^__pycache__/"
            "^output/"
            "^data/"
            "^target/"
            "^build/"
            "%.ipynb"
          ];
          set_env.COLORTERM = "truecolor";
        };
        pickers = {
          colorscheme = {
            enable_preview = true;
          };
        };
      };
    };
  };
}
