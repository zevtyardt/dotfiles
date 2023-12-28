local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
      }
    }
  },
  {
    "farmergreg/vim-lastplace",
    lazy = false,
    init = function()
      vim.g.lastplace_ignore_buftype = "quickfix,nofile,help"
      vim.g.lastplace_ignore_filetype = "gitcommit,gitrebase,svn,hgcommit"
      vim.g.lastplace_open_folds = 1
    end
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('crates').setup()
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      require("noice").setup({
        cmdline = {
          view = "cmdline",
        },
        popupmenu = {
          backend = "cmp"        
        },
        lsp = {
          signature = {
            enabled = false,
          }
        }
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },

  {
    "roobert/search-replace.nvim",
    lazy = false,
    config = function()
      require("search-replace").setup({
        -- optionally override defaults
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      })
    end,
  },

  {
    "folke/todo-comments.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
}
}


return plugins
