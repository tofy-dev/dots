-- =================================================================================================
-- ███╗   ██╗██╗   ██╗██╗███╗   ███╗   ████████╗██████╗ ███████╗███████╗
-- ████╗  ██║██║   ██║██║████╗ ████║   ╚══██╔══╝██╔══██╗██╔════╝██╔════╝
-- ██╔██╗ ██║██║   ██║██║██╔████╔██║█████╗██║   ██████╔╝█████╗  █████╗  
-- ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║   ██╔══██╗██╔══╝  ██╔══╝  
-- ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║      ██║   ██║  ██║███████╗███████╗
-- ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝
-- =================================================================================================
vim.g.nvim_tree_git_hl                     = 1
vim.g.nvim_tree_highlight_opened_files     = 1
vim.g.nvim_tree_root_folder_modifier       = ':~'
vim.g.nvim_tree_add_trailing               = 0
vim.g.nvim_tree_group_empty                = 1
vim.g.nvim_tree_icon_padding               = ' '
vim.g.nvim_tree_symlink_arrow              = ' ➛ '
vim.g.nvim_tree_respect_buf_cwd            = 1
vim.g.nvim_tree_create_in_closed_folder    = 1

vim.cmd("let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }")

vim.g.nvim_tree_show_icons = {
    git             = 1,
    folders         = 1,
    files           = 1,
    folder_arrows   = 1
}

vim.g.nvim_tree_icons = {
    git = {
        unstaged        = "✗",
        staged          = "✓",
        unmerged        = "",
        renamed         = "➜",
        untracked       = "★",
        deleted         = "",
        ignored         = "◌"
    },
    folder = {
        arrow_open      = "",
        arrow_closed    = "",
        default         = "",
        open            = "",
        empty           = "",
        empty_open      = "",
        symlink         = "",
        symlink_open    = "",
    },
    default = "",
    symlink = "",
}

vim.api.nvim_set_keymap('n', '<leader><tab>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true, silent = true })
