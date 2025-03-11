return {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    opts = {},
    config = function()
        -- tj's great idea
        CustomOilBar = function()
            local path = vim.fn.expand '%'
            path = path:gsub('oil://', '')

            return '  ' .. vim.fn.fnamemodify(path, ':.')
        end
        require('oil').setup {
            win_options = {
                winbar = '%{v:lua.CustomOilBar()}',
            },
            keymaps = {
                ['<C-p>'] = false,
            },
            view_options = {
                show_hidden = true,
            },
        }

        vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

        vim.keymap.set('n', '<space>-', require('oil').toggle_float)
    end,
}
