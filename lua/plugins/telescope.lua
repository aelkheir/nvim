return {
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
            return vim.fn.executable 'make' == 1
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-ui-select.nvim',
            { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
        },
        config = function()
            require('telescope').setup {
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown(),
                    },
                },
            }

            pcall(require('telescope').load_extension, 'fzf')
            pcall(require('telescope').load_extension, 'ui-select')

            local builtin = require 'telescope.builtin'

            vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
            vim.keymap.set('n', '<C-p>', builtin.find_files, {})
            vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>sd', function()
                builtin.diagnostics { bufnr = 0 }
            end, {})
            vim.keymap.set('n', '<leader>ad', function()
                builtin.diagnostics { bufnr = nil }
            end, {})
            vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})

            vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})

            vim.keymap.set('n', '<leader>sr', builtin.resume, {})
            vim.keymap.set('n', '<leader>/', function()
                builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end, {})
        end,
    },
}
