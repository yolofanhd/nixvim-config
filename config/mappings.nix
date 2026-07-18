{
  keymaps = [
    # Neo-tree bindings
    {
      action = "<cmd>NvimTreeToggle<CR>";
      mode = "n";
      key = "n";
      options = {
        desc = "Toggle NvimTree";
      };
    }

    # Commentary bindings
    {
      action = "<cmd>Commentary<CR>";
      mode = "n";
      key = "cl";
      options = {
        desc = "Toggle comment line";
      };
    }

    # Snacks (Telescope) bindings
    {
      action = "<cmd>lua Snacks.picker.grep()<CR>";
      mode = "n";
      key = "fw";
      options = {
        desc = "live grep";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.smart()<CR>";
      mode = "n";
      key = "ff";
      options = {
        desc = "Smart find files";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.buffers()<CR>";
      mode = "n";
      key = "fb";
      options = {
        desc = "List buffers";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.git_log()<CR>";
      mode = "n";
      key = "fg";
      options = {
        desc = "List git commits";
      };
    }
    {
      mode = "n";
      key = "fB";
      action = "<cmd>lua Snacks.picker.git_branches()<cr>";
      options = {
        desc = "Find git branches";
      };
    }
    {
      mode = "n";
      key = "fD";
      action = "<cmd>lua Snacks.picker.git_diff()<cr>";
      options = {
        desc = "Git Diff (Hunks)";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.recent()<CR>";
      mode = "n";
      key = "fo";
      options = {
        desc = "View old files";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.undo()<CR>";
      mode = "n";
      key = "fu";
      options = {
        desc = "List undo history";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.diagnostics()<CR>";
      mode = "n";
      key = "fd";
      options = {
        desc = "View diagnostics";
      };
    }
    {
      action = "<cmd>lua Snacks.picker.todo_comments()<CR>";
      mode = "n";
      key = "fe";
      options = {
        desc = "View ToDos";
      };
    }

    # Auto-Session bindings
    {
      action = "<cmd>SessionSearch<CR>";
      mode = "n";
      key = "fs";
      options = {
        desc = "View Sessions";
      };
    }

    # Floatterm bindings
    {
      action = "<cmd>FloatermToggle<CR>";
      mode = "n";
      key = "t";
      options = {
        desc = "Toggle FloatTerm";
      };
    }
    {
      action = "<cmd>FloatermToggle<CR>";
      mode = "t";
      key = "<Esc>";
    }

    # LSP bindings
    {
      mode = "n";
      key = "K";
      action = "<cmd>lua vim.lsp.buf.hover()<cr>";
      options = {
        desc = "View lsp hover information";
      };
    }
    {
      mode = "n";
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<cr>";
      options = {
        desc = "Jump to definition";
      };
    }
    {
      mode = "n";
      key = "gD";
      action = "<cmd>lua vim.lsp.buf.declaration()<cr>";
      options = {
        desc = "Jump to declaration";
      };
    }
    {
      mode = "n";
      key = "gi";
      action = "<cmd>lua vim.lsp.buf.implementation()<cr>";
      options = {
        desc = "Jump to implementation";
      };
    }
    {
      mode = "n";
      key = "go";
      action = "<cmd>lua vim.lsp.buf.type_definition()<cr>";
      options = {
        desc = "Jump to type definition";
      };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<cr>";
      options = {
        desc = "List all references";
      };
    }

    {
      mode = "n";
      key = "gl";
      action = "<cmd>lua vim.diagnostic.open_float()<cr>";
      options = {
        desc = "Show diagnostics of current line";
      };
    }
    {
      mode = "n";
      key = "[d";
      action = "<cmd>lua vim.diagnostic.goto_prev()<cr>";
      options = {
        desc = "Move to previous diagnostic";
      };
    }
    {
      mode = "n";
      key = "]d";
      action = "<cmd>lua vim.diagnostic.goto_next()<cr>";
      options = {
        desc = "Move to next diagnostic";
      };
    }
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
    {
      mode = "n";
      key = "<F2>";
      action = "<cmd>lua vim.lsp.buf.rename()<cr>";
      options = {
        desc = "Rename";
      };
    }
    {
      mode = "n";
      key = "gs";
      action = "<cmd>lua vim.lsp.buf.signature_help()<cr>";
      options = {
        desc = "Show signature information";
      };
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
