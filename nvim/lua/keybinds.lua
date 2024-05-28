vim.g.mapleader = " "

-- BASIC
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', { noremap = true, silent = true, nowait = true })

vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader><enter>', ':10split term://zsh<CR>', { noremap = true, silent = true, nowait = true })

-- NVIM TREE
vim.api.nvim_set_keymap('n', '<leader><tab>', ':NvimTreeToggle<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true, silent = true, nowait = true })

-- BAR BAR
vim.api.nvim_set_keymap('n', '<leader>,', ':BufferPrevious<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>.', ':BufferNext<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader><', ':BufferMovePrevious<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>>', ':BufferMoveNext<CR>', { noremap = true, silent = true, nowait = true })

vim.api.nvim_set_keymap('n', '<leader>1', ':BufferGoto 1<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>2', ':BufferGoto 2<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>3', ':BufferGoto 3<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>4', ':BufferGoto 4<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>5', ':BufferGoto 5<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>6', ':BufferGoto 6<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>7', ':BufferGoto 7<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>8', ':BufferGoto 8<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>9', ':BufferGoto 9<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>0', ':BufferGoto 0<CR>', { noremap = true, silent = true, nowait = true })

vim.api.nvim_set_keymap('n', '<leader>p', ':BufferPin<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':BufferClose<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<CR>', { noremap = true, silent = true, nowait = true })

vim.api.nvim_set_keymap('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<Space>bd', ':BufferOrderByDirectory<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<Space>bl', ':BufferOrderByLanguage<CR>', { noremap = true, silent = true, nowait = true })
vim.api.nvim_set_keymap('n', '<Space>bw', ':BufferOrderByWindowNumber<CR>', { noremap = true, silent = true, nowait = true })

-- Wipeout buffer
--                          :BufferWipeout<CR>
-- Close commands
--                          :BufferCloseAllButCurrent<CR>
--                          :BufferCloseAllButPinned<CR>
--                          :BufferCloseAllButCurrentOrPinned<CR>
--                          :BufferCloseBuffersLeft<CR>
--                          :BufferCloseBuffersRight<CR>
