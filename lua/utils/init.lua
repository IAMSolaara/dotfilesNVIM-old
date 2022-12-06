local M = {}
M.map = function (mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

M.unmap = function (mode, lhs)
    vim.api.nvim_del_keymap(mode, lhs)
end

M.get_os = function ()
	local sysname = vim.loop.os_uname().sysname
	return sysname
end

return M
