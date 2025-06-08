-- toggle background command
local create_cmd = vim.api.nvim_create_user_command

create_cmd("ToggleBackground", function ()
    if vim.o.background == 'dark' then
        vim.cmd([[colorscheme onedark]])
        vim.cmd'set bg=light'
    else
        vim.cmd([[colorscheme everforest]])
        vim.cmd'set bg=dark'
    end
end, {})

vim.api.nvim_create_user_command('Rfinder',
    function()
        local path = vim.api.nvim_buf_get_name(0)
        os.execute('open -R ' .. path)
    end,
    {}
)
