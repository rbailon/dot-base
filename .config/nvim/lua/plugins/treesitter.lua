return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = false,
        ensure_installed = {
          "bash",
          "css",
		  "dockerfile",
          "html",
          "javascript",
          "json",
          "lua",
		  "php",
		  "powershell",
		  "python",
          "scss",
          "tmux",
          "typescript",
        },
        highlight = { enable = true },
        indent = { enable = false },
      })
    end
  }
}
