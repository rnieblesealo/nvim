return
{
  "Mofiqul/adwaita.nvim",
  lazy = false,
  priority = 1000,

  -- configure and set on startup
  config = function()
    vim.opt.background = "light"

    vim.g.adwaita_darker = false            -- for darker version
    vim.g.adwaita_disable_cursorline = true -- to disable cursorline
    vim.g.adwaita_transparent = false       -- makes the background transparent

    vim.cmd('colorscheme adwaita')

    -- match nvimtree floating window background/border to telescope
    vim.api.nvim_set_hl(0, "NvimTreeNormalFloat", { link = "TelescopeNormal" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalFloatBorder", { link = "TelescopeBorder" })

    -- make nvimtree cursor line match the normal-mode statusline
    vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { link = "StatusLine" })
  end
}
