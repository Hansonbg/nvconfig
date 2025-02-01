return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim',
    'BurntSushi/ripgrep',
    'nvim-treesitter/nvim-treesitter'},
  config = function()
    require("telescope").setup()
  end,
  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
    { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Find Buffers" },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end, desc = "Find Help" },
  },
}

