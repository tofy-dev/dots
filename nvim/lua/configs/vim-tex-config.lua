-- =================================================================================================
-- ██╗   ██╗██╗███╗   ███╗   ████████╗███████╗██╗  ██╗
-- ██║   ██║██║████╗ ████║   ╚══██╔══╝██╔════╝╚██╗██╔╝
-- ██║   ██║██║██╔████╔██║█████╗██║   █████╗   ╚███╔╝ 
-- ╚██╗ ██╔╝██║██║╚██╔╝██║╚════╝██║   ██╔══╝   ██╔██╗ 
--  ╚████╔╝ ██║██║ ╚═╝ ██║      ██║   ███████╗██╔╝ ██╗
--   ╚═══╝  ╚═╝╚═╝     ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═╝
-- =================================================================================================
vim.cmd [[
let g:vimtex_view_general_viewer = 'evince'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
let maplocalleader = ","
]]
