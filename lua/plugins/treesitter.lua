return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "lua",         -- Example: Lua
      "ocaml",
      "ocaml_interface",
      "ocamllex",
      "rust",
    },
    highlight = {
      enable = true,
      disable = {},
      additional_vim_regex_highlighting = { "ocaml" },
    },
    indent = { enable = true },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
	["af"] = "@function.outer", -- Select the whole function
	["if"] = "@function.inner", -- Select inside a function
	["ac"] = "@class.outer",    -- Select the whole class
	["ic"] = "@class.inner",    -- Select inside a classa
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)

    -- If necessary, load Tree-sitter OCaml manually
    pcall(function()
      require("tree-sitter-ocaml").ocaml()
      require("tree-sitter-ocaml").ocaml_interface()
      require("tree-sitter-ocaml").ocaml_type()
    end)
  end,
}

