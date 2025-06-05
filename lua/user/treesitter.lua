local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
  return
end

local configs_status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not configs_status_ok then
  return
end

configs.setup {
  ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "rust", "haskell", "nix", "norg", "c", "cpp", "cmake" },
  ignore_install = { "" },
  sync_install = false,

  highlight = {
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true, disable = { "python", "css" } },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

