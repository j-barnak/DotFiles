return {
  "echasnovski/mini.indentscope",
  lazy = false,
  version = false,
  config = function()
    local indent_opts = {
      draw = {
        delay = 40,
        animation = require("mini.indentscope").gen_animation.none(),
      },
    }
    require("mini.indentscope").setup(indent_opts)
  end,
}