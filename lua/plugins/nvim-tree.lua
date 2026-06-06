local function set_mappings() -- sets nvimtree mappings for any buffer
  local api = require("nvim-tree.api")
  local opts = {
    noremap = true,
    silent = true,
    nowait = true
  }

  vim.keymap.set("n", "<leader>n", api.tree.toggle, opts) -- open with leader + n
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup()
    set_mappings()
  end,
}
