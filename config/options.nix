{
  opts = {
    # Line numbers
    number = true;
    relativenumber = true;

    # Always show the signcolumn, otherwise text would be shifted when displaying error icons
    signcolumn = "yes";

    swapfile = false;
    backup = false;
    syntax = "OFF";

    undofile = true;

    termguicolors = true;
    encoding = "utf8";
    fileencoding = "utf8";

    hlsearch = false;
    incsearch = true;

    splitright = true;
    splitbelow = true;

    # Search
    ignorecase = true;
    smartcase = true;

    # Folding
    foldmethod = "manual";
    foldenable = false;

    # Tab defaults (might get overwritten by an LSP server)
    smartindent = true;
    tabstop = 4;
    softtabstop = 2;
    shiftwidth = 4;
    expandtab = true;
    smarttab = true;

    # System clipboard support, needs xclip/wl-clipboard
    clipboard = "unnamedplus";

    # Highlight the current line
    cursorline = true;

    # Show line and column when searching
    ruler = true;

    # Global substitution by default
    gdefault = true;

    # Start scrolling when the cursor is X lines away from the top/bottom
    scrolloff = 4;

    # Remove command line unless needed
    cmdheight = 0;
  };
}
