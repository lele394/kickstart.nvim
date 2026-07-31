vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = 'Moves visual selection up' })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = 'Moves visual selection down' })
