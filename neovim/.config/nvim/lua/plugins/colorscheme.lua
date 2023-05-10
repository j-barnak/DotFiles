return {
  "sainnhe/sonokai",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.sonokai_disable_italic_comment = 1
    vim.g.sonokai_lightline_disable_bold = 1
    vim.g.sonokai_better_performance = 1

    vim.cmd.colorscheme("sonokai")
  end,
}