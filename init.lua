require ("config.lazy")

vim.opt.shiftwidth = 2
vim.opt.clipboard = "unnamedplus"

vim.opt.hlsearch = false
vim.opt.ignorecase = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

--Harpoon Keymap to add a file
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

--Harpoon Keymaps for file movement
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

--Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
