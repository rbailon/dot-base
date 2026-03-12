return {
  {
    "brenoprata10/nvim-highlight-colors",
    lazy = false,
    priority = 900,

    config = function()
      require("nvim-highlight-colors").setup({
        render = "background",      -- 'background' | 'foreground' | 'virtual'
        virtual_symbol = "■",
        enable_hex = true,
        enable_short_hex = true,
        enable_rgb = true,
        enable_hsl = true,
        enable_var_usage = true,
        enable_named_colors = true,
        enable_tailwind = true,
      })
    end,
  },
}

