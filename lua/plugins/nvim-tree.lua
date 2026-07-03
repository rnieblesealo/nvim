local function set_mappings() -- sets nvimtree mappings for any buffer
  local api = require("nvim-tree.api")
  local opts = {
    noremap = true,
    silent = true,
    nowait = true
  }

  vim.keymap.set("n", "<leader>n", api.tree.toggle, opts) -- open with leader + n
  vim.keymap.set("n", "q", api.tree.close, opts)          -- close with q
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        float = {
          enable = true,
          open_win_config = function()
            local editor_width = vim.o.columns
            local editor_height = vim.o.lines

            local width = math.floor(editor_width * 0.7)
            local height = 20

            return {
              relative = "editor",
              border = "rounded",
              width = width,
              height = height,
              row = math.floor((editor_height - height) / 2) - 1,
              col = math.floor((editor_width - width) / 2),
            }
          end,
        },
      },
    })
    set_mappings()
  end,
}
