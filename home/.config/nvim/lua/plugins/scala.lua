return {
  "scalameta/nvim-metals",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "lukas-reineke/lsp-format.nvim" },
    { "hrsh7th/nvim-cmp" },
  }, 
  ft = { "scala", "sbt", "java" }, 
  opts = function() 
    local metals_config = require("metals").bare_config()
    metals_config.on_attach = function(client, bufnr)
        require("lsp-format").on_attach(client, bufnr)
    end
    metals_config.autostart = true
    metals_config.init_options.statusBarProvider = "off"
    return metals_config 
  end,
  config = function(self, metals_config)
    local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = self.ft,
      callback = function()
        require("metals").initialize_or_attach(metals_config)
    end,
      group = nvim_metals_group,
    })
  end 
}
