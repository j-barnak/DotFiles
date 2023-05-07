return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    "debugloop/telescope-undo.nvim",
    "stevearc/aerial.nvim",
    "ahmedkhalf/project.nvim",
  },
  keys = {
    {
      "<leader>ff",
      "<cmd>Telescope find_files<CR>",
      desc = "Find Files",
    },
    {
      "<leader>fg",
      "<cmd> Telescope live_grep<CR>",
      desc = "Grep all files",
    },
    {
      "<leader>fr",
      "<cmd>Telescope oldfiles<cr>",
      desc = "Find recent files",
    },
    {
      "<leader>fd",
      "<cmd>Telescope git_files<cr>",
      desc = "Find project files",
    },
    {
      "<leader>fs",
      "<cmd>Telescope aerial<cr>",
      desc = "Find symbols",
    },
    {
      "<leader>u",
      "<cmd>Telescope undo<cr>",
      desc = "Undo",
    },
  },
  config = function()
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("undo")
    require("telescope").load_extension("aerial")
  end,
}
