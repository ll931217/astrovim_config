local function alpha()
  return math.floor(vim.g.transparency * 255)
end

-- Neovide configration
if vim.g.neovide then
  vim.opt.guifont = "Fantasque_Sans_Mono:h20"
  -- vim.opt.guifont = { 'FiraCode Nerd Font Mono,codicon Nerd Font', 'h18' }

  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0
  vim.g.neovide_cursor_vfx_mode = "wireframe"

  -- vim.g.neovide_transparency = 0.8
  -- vim.g.transparency = 0.8
  -- vim.g.neovide_background_color = "#24273A" .. alpha()

  -- Zoom controls
  vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end
