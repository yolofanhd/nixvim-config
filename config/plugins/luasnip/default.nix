{
  plugins = {
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        exit_roots = false;
        keep_roots = true;
        link_roots = true;
        update_events = [
          "TextChanged"
          "TextChangedI"
        ];
      };
      fromLua = [
        {
          paths = "./snippets/rust.lua";
        }
      ];
    };
  };
}
