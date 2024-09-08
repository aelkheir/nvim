return {
    'folke/tokyonight.nvim',
    priority = 1000,
    lazy = false,
    -- opts = {},
    config = function()
        local transparent = false -- set to true if you would like to enable transparency

        require('tokyonight').setup {
            style = 'night',
            transparent = transparent,
            styles = {
                sidebars = transparent and 'transparent' or 'dark',
                floats = transparent and 'transparent' or 'dark',
            },
            on_highlights = function(highlights, colors)
                highlights.GitSignsAdd = {
                    fg = '#164846',
                }
                highlights.GitSignsChange = {
                    fg = '#394b70',
                }
                highlights.GitSignsDelete = {
                    fg = '#703438',
                }
            end,
        }

        vim.cmd 'colorscheme tokyonight'
    end,
}
