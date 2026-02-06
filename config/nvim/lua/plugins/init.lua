-- ~/.config/nvim/lua/plugins/init.lua

-- 1. Default Kickstart plugins (copy these from Kickstart’s README or template)
local default_plugins = {
  'nvim-lua/plenary.nvim',
  'nvim-tree/nvim-web-devicons',
  -- … all other stock plugins …
}

-- 2. Pull in your custom plugins if they exist
local has_custom, custom_plugins = pcall(require, 'custom.plugins')
if has_custom then
  vim.list_extend(default_plugins, custom_plugins)
end

-- 3. Initialize lazy.nvim
local opts = {
  -- your Lazy.nvim options, e.g., defaults, performance, etc.
}
require('lazy').setup(default_plugins, opts)
