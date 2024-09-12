return {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    lazy = false,
    -- switch to 'main' once stable
    branch = 'regexp',
    opts = {
        settings = {
            options = {
                notify_user_on_venv_activation = true,
            },
        },
    },
    keys = {
        { ',v', '<cmd>VenvSelect<cr>' },
    },
}
