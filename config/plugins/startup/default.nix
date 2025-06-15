{
  plugins = {
    startup = {
      enable = true;
      parts = [
        "header"
        "body"
      ];
      sections = {
        header = {
          align = "center";
          content = [
            "    _  _  ____    __ _  __  _  _  _  _  __  _  _   "
            "   ( \\/ )(  __)  (  ( \\(  )( \\/ )/ )( \\(  )( \\/ )  "
            "    )  /  ) _)   /    / )(  )  ( \\ \\/ / )( / \\/ \\  "
            "   (__/  (__)    \\_)__)(__)(_/\\_) \\__/ (__)\\_)(_/  "
            ""
          ];
          defaultColor = "";
          foldSection = false;
          highlight = "Statement";
          margin = 5;
          oldfilesAmount = 0;
          title = "Header";
          type = "text";
        };
        body = {
          align = "center";
          content = [
            [
              " Find File"
              "Telescope find_files"
              "ff"
            ]
            [
              "󰍉 Find Word"
              "Telescope live_grep"
              "fw"
            ]
            [
              " File History"
              "Telescope oldfiles"
              "fh"
            ]
            [
              " File Browser"
              "NvimTreeToggle"
              "n"
            ]
            [
              " New File"
              "lua require'startup'.new_file()"
              "<leader>nf"
            ]
          ];
          defaultColor = "";
          foldSection = false;
          highlight = "String";
          margin = 5;
          oldfilesAmount = 0;
          title = "Basic Commands";
          type = "mapping";
        };
      };
    };
  };
}
