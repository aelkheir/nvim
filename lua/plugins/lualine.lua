return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local colors = require('tokyonight.colors').setup()
        require('lualine').setup {
            options = {
                theme = 'tokyonight',
                section_separators = '',
                component_separators = '',
            },
            sections = {
                lualine_b = {
                    'branch',
                    {
                        'diff',
                        diff_color = {
                            added = { fg = colors.git.add },
                            modified = { fg = colors.git.change },
                            removed = { fg = colors.git.delete },
                        },
                    },
                },
            },
        }
    end,
}
