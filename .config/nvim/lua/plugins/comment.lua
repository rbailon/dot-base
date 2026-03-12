return {
    "numToStr/Comment.nvim",
    opts = {
        -- Esto activa las configuraciones por defecto
        -- Incluye gcc para comentar línea y gc para modo visual
    },
    config = function(_, opts)
        require('Comment').setup(opts)
    end,
}
