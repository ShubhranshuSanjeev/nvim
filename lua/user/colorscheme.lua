-- local colorscheme = "rose-pine"
-- local colorscheme = "gruvbox"
-- local colorscheme = "tokyonight-storm"
-- local colorscheme = "tokyonight-day"
-- local colorscheme = "tokyonight-moon"
-- local colorscheme = "tokyonight-night"
-- local colorscheme = "kanagawa-dragon"
local colorscheme = "kanagawa-wave"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
