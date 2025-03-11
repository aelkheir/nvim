-- Ensure help always opens in a vertical split
vim.api.nvim_create_autocmd('BufWinEnter', {
    buffer = 0, -- Ensures this applies only to the current buffer
    callback = function()
        vim.cmd 'wincmd L' -- Move the help window to a vertical split
    end,
})
