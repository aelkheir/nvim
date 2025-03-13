local get_option = vim.filetype.get_option
vim.filetype.get_option = function(filetype, option)
    local internal = require 'ts_context_commentstring.internal'
    return option == 'commentstring' and internal.calculate_commentstring() or get_option(filetype, option)
end

return {
    'JoosepAlviste/nvim-ts-context-commentstring',
    opts = {
        enable_autocmd = false,
    },
}
