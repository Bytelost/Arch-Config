require'nvim-treesitter.configs'.setup {
  -- List of languages to allways have installed
  ensure_installed = { "c", "lua", "vim", "java", "python"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
