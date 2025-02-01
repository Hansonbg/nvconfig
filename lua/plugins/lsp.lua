return{
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
	opts = {
	  library = {
	    -- See the configuration section for more details
	    -- Load luvit types when the `vim.uv` word is found
	    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	  },
	  servers = {
	    ocamllsp = {},
	  }
	},
      },
    },
    config = function()
      require("lspconfig").lua_ls.setup {}
      require'lspconfig'.ocamllsp.setup {
	filetypes = { "ocaml", "menhir", "ocamlyacc", "ocamllex", "reason", "dune" },
	cmd = { "ocamllsp" },
      }
    end,
  }
}
