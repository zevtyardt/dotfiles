---@type ChadrcConfig
local M = {}

M.ui = { theme = 'nightfox' }
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"

vim.o.inccommand = "split"

return M
