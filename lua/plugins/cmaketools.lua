return {
    'Civitasv/cmake-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.keymap.set('n', '<leader>ru', '<cmd>CMakeRun<CR>')
        require('cmake-tools').setup {
            cmake_regenerate_on_save = false,
            cmake_build_directory = 'build',
            cmake_executor = {
                name = 'quickfix',
                opts = {},
            },
            cmake_runner = {
                name = 'terminal',
                opts = {
                    split_direction = 'vertical',
                    split_size = 50,
                },
                default_opts = {},
            },
        }
    end,
}
