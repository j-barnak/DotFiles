-- TODO: Implelement using lazy
return {
  "gbprod/yanky.nvim",
  lazy = false,
  dependencies = {
    { "kkharji/sqlite.lua" },
  },
  events = "VeryLazy",
  opts = {
    highlight = {
      timer = 0,
    },
  },
  keys = {
    { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" } },
    { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" } },
    { "<c-n>", "<Plug>(YankyCycleForward)" },
    { "<c-p>", "<Plug>(YankyCycleBackward)" },
    -- TODO: Fix this
    -- { "leader<p>", "a<space><C-c><Plug>(YankyPutAfter)" },
  },
  config = function(_, opts)
    require("yanky").setup(opts)
  end,
}
