vim.cmd [[
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
]]

vim.opt.background = 'dark'
vim.api.nvim_cmd({ cmd = 'colorscheme', args = {'catppuccin'} }, {})

-- better color support
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
	sync_install = true,
	highlight = {
		enable = true,
		disable = {'latex'},
	}
}
