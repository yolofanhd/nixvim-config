{
  keymaps = [
    # Neo-tree bindings
    {
      action = "<cmd>NvimTreeToggle<CR>";
      mode = "n";
      key = "n";
    }

    # Commentary bindings
    {
      action = "<cmd>Commentary<CR>";
      mode = "n";
      key = "cl";
    }

    # Telescope bindings

    {
      action = "<cmd>Telescope live_grep<CR>";
      mode = "n";
      key = "fw";
    }
    {
      action = "<cmd>Telescope find_files<CR>";
      mode = "n";
      key = "ff";
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      mode = "n";
      key = "fb";
    }

    {
      action = "<cmd>Telescope treesitter<CR>";
      mode = "n";
      key = "ft";
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      mode = "n";
      key = "fg";
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      mode = "n";
      key = "fh";
    }

    # Floatterm toggle
    {
      action = "<cmd>FloatermToggle<CR>";
      mode = "n";
      key = "t";
    }
    {
      action = "<cmd>FloatermToggle<CR>";
      mode = "t";
      key = "<Esc>";
    }

    # Hover information
    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
    }

    # Jump to the definition
    {
      mode = "n";
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<cr>";
    }

    # Jump to declaration
    {
      mode = "n";
      key = "gD";
      action = "<cmd>lua vim.lsp.buf.declaration()<cr>";
    }

    # Lists all the implementations for the symbol under the cursor
    {
      mode = "n";
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
    }

    # Jumps to the definition of the type symbol
    {
      mode = "n";
      key = "go";
      action = "<cmd>lua vim.lsp.buf.type_definition()<cr>";
    }

    # Lists all the references
    {
      mode = "n";
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<cr>";
    }

    # Displays a function's signature information
    {
      mode = "n";
      key = "gs";
      action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
    }

    # Renames all references to the symbol under the cursor
    {
      mode = "n";
      key = "<F2>";
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
    }

    # Selects a code action available at the current cursor position
    {
      mode = "n";
      key = "<F4>";
      action = "<cmd>lua vim.lsp.buf.code_action()<cr>";
    }
    {
      mode = "x";
      key = "<F4>";
      action = "<cmd>lua vim.lsp.buf.range_code_action()<cr>";
    }

    # Show diagnostics in a floating window
    {
      mode = "n";
      key = "gl";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
    }

    # Move to the previous diagnostic
    {
      mode = "n";
      key = "[d";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
    }

    # Move to the next diagnostic
    {
      mode = "n";
      key = "]d";
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
    }

    # Notify bindings

    {
      mode = "n";
      key = "dn";
      action = ''
        <cmd>lua require("notify").dismiss({ silent = true, pending = true })<cr>
      '';
      options = {
        desc = "Dismiss All Notifications";
      };
    }
  ];
}
