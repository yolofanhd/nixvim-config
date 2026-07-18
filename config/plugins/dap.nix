{
  plugins = {
    dap = {
      enable = true;
      lazyLoad.settings = {
        event = "BufEnter";
      };
      signs = {
        dapBreakpoint = {
          text = "●";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "●";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
      };
      configurations = {
        java = [
          {
            type = "java";
            request = "launch";
            name = "Debug (Attach) - Remote";
            hostName = "127.0.0.1";
            port = 5005;
          }
        ];
      };
    };
    dap-python.enable = true;
    dap-virtual-text.enable = true;
    dap-ui = {
      enable = true;
      lazyLoad.settings = {
        before.__raw = ''
          function()
            require('lz.n').trigger_load('nvim-dap')
          end
        '';
        keys = [
          {
            __unkeyed-1 = "<leader>du";
            __unkeyed-2.__raw = ''
              function()
                require('dap.ext.vscode').load_launchjs(nil, {})
                require("dapui").toggle()
              end
            '';
            desc = "Toggle Debugger UI";
          }
        ];
      };
      settings = {
        floating.mappings = {
          close = [
            "<ESC>"
            "q"
          ];
        };
      };
    };
  };
}
