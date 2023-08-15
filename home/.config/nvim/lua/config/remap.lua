vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
-- Hi
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("n", "q", "<Nop>", { silent = true }) -- disable macro
vim.keymap.set("n", "s", "<Nop>", { silent = true }) -- For mini.surround
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<CR>", "<CR><Cmd>cclose<CR>", { buffer = false, noremap = false, silent = true })
vim.keymap.set("n", "<cr>", "ciw")
vim.keymap.set("i", "<C-w>", "<Esc>cvb", {})
vim.keymap.set({ "n", "o", "x" }, "H", "^", {})
vim.keymap.set({ "n", "o", "x" }, "L", "$", {})
vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>")
vim.keymap.set({ "n", "v" }, "<leader><leader>", '"a', { buffer = true })
