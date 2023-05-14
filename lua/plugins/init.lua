return {
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'  },
  {'hrsh7th/cmp-path'    },
  {'hrsh7th/cmp-cmdline' },
  {'hrsh7th/nvim-cmp'    },
  {'L3MON4D3/LuaSnip'},
  {'saadparwaiz1/cmp_luasnip'},
  {'neovim/nvim-lspconfig'},
  {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup()
    end,
    build = ":MasonUpdate"
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  { "itchyny/vim-haskell-indent" },
  { "Tetralux/odin.vim" },
  { "alaviss/nim.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end
  }

}
