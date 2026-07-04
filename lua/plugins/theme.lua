local function fix_nvimtree_colors()
  -- make nvimtree window style match telescope window style ( white )
  -- normally it just looks gray so the borders dont blend with bg

  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { link = 'Normal' })
  vim.api.nvim_set_hl(0, 'NvimTreeNormalFloat', { link = 'Normal' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Grey' })

  local normal_bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg
  vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', { fg = normal_bg }) -- fix gray tildes ( makes them white )
end

return {
  'sainnhe/edge',
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.background = "light"
    vim.cmd.colorscheme("edge")
    fix_nvimtree_colors()
  end
}
