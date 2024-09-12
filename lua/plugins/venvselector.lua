return {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    lazy = false,
    branch = 'regexp',
    config = function()
        require('venv-selector').setup()
    end,
    keys = {
        { ',v', '<cmd>VenvSelect<cr>' },
    },
}
