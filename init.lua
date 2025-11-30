-- Load my Vim options
require("vim-options")

-- Install Lazy

-- Get path to base dir of my nvim user data; append path where lazy files will go
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If lazy files don't exist, create them
-- Nvim uses an event loop to do event-based programming 
if not vim.loop.fs_stat(lazypath) then
 vim.fn.system({
  "git",
  "clone",
  "--filter=blob:none",
  "https://github.com/folke/lazy.nvim.git",
  "--branch=stable", -- latest stable release
  lazypath,
 })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	change_detection = {notify = false},
})
