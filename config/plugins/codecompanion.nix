{
  plugins.codecompanion = {
    enable = true;
    settings = {
      adapters = {
        ollama = {
          __raw = ''
            function()
              return require("codecompanion.adapters").extend("ollama", {
                env = {
                  url = os.getenv("OLLAMA_URL"),
                  api_key = os.getenv("OLLAMA_API_KEY"),
                },
                headers = {
                  ["Content-Type"] = "application/json",
                  ["Authorization"] = "Bearer " .. os.getenv("OLLAMA_API_KEY"),
                },
                parameters = {
                    sync = true,
                },
                schema = {
                  model = {
                    default = "qwen3:30b-a3b",
                  },
                  temperature = {
                    mapping = "parameters",
                    default = 0.8,
                  },
                  num_ctx = {
                    mapping = "parameters",
                    default = 80000,
                  },
                  num_gpu = {
                    mapping = "parameters",
                    default = 50,
                  },
                  num_batch = {
                    mapping = "parameters",
                    default = 1024,
                  },
                  use_mmap = {
                    mapping = "parameters",
                    default = true,
                  },
                  num_threads = {
                    mapping = "parameters",
                    default = 2,
                  },
                   max_completion_tokens = {
                    mapping = "parameters",
                    default = 100000,
                  },
                },
              })
            end,
          '';
        };
      };
      opts = {
        log_level = "TRACE";
        send_code = true;
        use_default_actions = true;
        use_default_prompts = true;
      };
      strategies = {
        agent = {
          adapter = "ollama";
        };
        chat = {
          adapter = "ollama";
          opts = {
            completion_provider = "cmp";
          };
        };
        inline = {
          adapter = "ollama";
        };
      };
      display = {
        chat = {
          show_header_separator = true;
          separator = "─";
          show_references = true;
          show_settings = true;
          show_token_count = true;
          start_in_insert_mode = true;
          window = {
            layout = "float";
            border = "single";
          };
        };
      };
    };
  };
}
