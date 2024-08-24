---@class Config
---@field opt string Your config option
local config = {
  color_overrides = {},
  group_overrides = {},
}

local M = {}

---@type Config
M.config = config

---@param args Config?
M.setup = function(args)
  M.config = vim.tbl_deep_extend('force', M.config, args or {})
end

M.load = function()
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'vem-dark'

  require('vem-dark.theme').apply()
  require('vem-dark.leaderf').apply()

  if M.config.group_overrides then
    for group, val in pairs(M.config.group_overrides) do
      val.force = true
      vim.api.nvim_set_hl(0, group, val)
    end
  end
end

return M
