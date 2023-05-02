vim.g.mapleader = " "
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>l", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

-- vim.api.nvim_create_autocmd("BufWritePost", {
--     callback = function()
--         vim.lsp.buf.format()
--     end
-- })