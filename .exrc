let s:cpo_save=&cpo
set cpo&vim
inoremap <C-G>S <Plug>(nvim-surround-insert-line)
inoremap <C-G>s <Plug>(nvim-surround-insert)
imap <silent> <C-G>% <Plug>(matchup-c_g%)
inoremap <silent> <Plug>(matchup-c_g%) :call matchup#motion#insert_mode()
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <M-a> ggVG
inoremap <C-W> u
nnoremap <silent>  :TmuxNavigateLeft
nnoremap <silent> <NL> :TmuxNavigateDown
nnoremap <silent>  :TmuxNavigateUp
nnoremap <silent>  :TmuxNavigateRight
nnoremap z _|
nnoremap \ v
nnoremap - s
nmap  d
nnoremap <silent>  <Cmd>noh
nnoremap  vi <Cmd>PasteImage
nnoremap  ft <Cmd>TodoTelescope
nnoremap  rm <Cmd>MarkdownPreviewToggle
vnoremap  d "_d
nnoremap  d "_d
xnoremap  p "_dP
nnoremap <silent>  q <Cmd>copen
nnoremap  s :%s/\<\>//gI<Left><Left><Left>
omap <silent> % <Ignore><Plug>(matchup-%)
xmap <silent> % <Plug>(matchup-%)
nmap <silent> % <Plug>(matchup-%)
nnoremap & :&&
vnoremap < <gv
vnoremap > >gv
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
nnoremap J mzJ`z
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
xnoremap S <Plug>(nvim-surround-visual)
vnoremap Y "+y
nnoremap Y "+y
onoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
xnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top')
nnoremap <silent> [i <Cmd>lua MiniIndentscope.operator('top', true)
omap <silent> [% <Plug>(matchup-[%)
xmap <silent> [% <Plug>(matchup-[%)
nmap <silent> [% <Plug>(matchup-[%)
nnoremap <silent> [Q <Cmd>cfirst
nnoremap <silent> [q <Cmd>cp
onoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
xnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom')
nnoremap <silent> ]i <Cmd>lua MiniIndentscope.operator('bottom', true)
omap <silent> ]% <Plug>(matchup-]%)
xmap <silent> ]% <Plug>(matchup-]%)
nmap <silent> ]% <Plug>(matchup-]%)
nnoremap <silent> ]Q <Cmd>clast
nnoremap <silent> ]q <Cmd>cn
onoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
xnoremap <silent> ai <Cmd>lua MiniIndentscope.textobject(true)
omap <silent> a% <Plug>(matchup-a%)
xmap <silent> a% <Plug>(matchup-a%)
onoremap aq a"
onoremap ar a[
nnoremap cS <Plug>(nvim-surround-change-line)
nnoremap cs <Plug>(nvim-surround-change)
nnoremap ds <Plug>(nvim-surround-delete)
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
xnoremap gS <Plug>(nvim-surround-visual-line)
nnoremap gSS <Plug>(nvim-surround-normal-cur-line)
nnoremap gss <Plug>(nvim-surround-normal-cur)
nnoremap gs <Plug>(nvim-surround-normal)
omap <silent> g% <Ignore><Plug>(matchup-g%)
xmap <silent> g% <Plug>(matchup-g%)
nmap <silent> g% <Plug>(matchup-g%)
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gc <Plug>(comment_toggle_linewise)
onoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
xnoremap <silent> ii <Cmd>lua MiniIndentscope.textobject(false)
omap <silent> i% <Plug>(matchup-i%)
xmap <silent> i% <Plug>(matchup-i%)
onoremap iq i"
onoremap ir i[
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap yS <Plug>(nvim-surround-normal-line)
vnoremap y ygv
omap <silent> z% <Plug>(matchup-z%)
xmap <silent> z% <Plug>(matchup-z%)
nmap <silent> z% <Plug>(matchup-z%)
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
nmap <silent> <2-LeftMouse> <Plug>(matchup-double-click)
nnoremap <Plug>(matchup-reload) :MatchupReload
nnoremap <silent> <Plug>(matchup-double-click) :call matchup#text_obj#double_click()
onoremap <silent> <Plug>(matchup-a%) :call matchup#text_obj#delimited(0, 0, 'delim_all')
onoremap <silent> <Plug>(matchup-i%) :call matchup#text_obj#delimited(1, 0, 'delim_all')
xnoremap <silent> <Plug>(matchup-a%) :call matchup#text_obj#delimited(0, 1, 'delim_all')
xnoremap <silent> <Plug>(matchup-i%) :call matchup#text_obj#delimited(1, 1, 'delim_all')
onoremap <silent> <Plug>(matchup-Z%) :call matchup#motion#op('Z%')
xnoremap <silent> <SNR>42_(matchup-Z%) :call matchup#motion#jump_inside_prev(1)
nnoremap <silent> <Plug>(matchup-Z%) :call matchup#motion#jump_inside_prev(0)
onoremap <silent> <Plug>(matchup-z%) :call matchup#motion#op('z%')
xnoremap <silent> <SNR>42_(matchup-z%) :call matchup#motion#jump_inside(1)
nnoremap <silent> <Plug>(matchup-z%) :call matchup#motion#jump_inside(0)
onoremap <silent> <Plug>(matchup-[%) :call matchup#motion#op('[%')
onoremap <silent> <Plug>(matchup-]%) :call matchup#motion#op(']%')
xnoremap <silent> <SNR>42_(matchup-[%) :call matchup#motion#find_unmatched(1, 0)
xnoremap <silent> <SNR>42_(matchup-]%) :call matchup#motion#find_unmatched(1, 1)
nnoremap <silent> <Plug>(matchup-[%) :call matchup#motion#find_unmatched(0, 0)
nnoremap <silent> <Plug>(matchup-]%) :call matchup#motion#find_unmatched(0, 1)
onoremap <silent> <Plug>(matchup-g%) :call matchup#motion#op('g%')
xnoremap <silent> <SNR>42_(matchup-g%) :call matchup#motion#find_matching_pair(1, 0)
onoremap <silent> <Plug>(matchup-%) :call matchup#motion#op('%')
xnoremap <silent> <SNR>42_(matchup-%) :call matchup#motion#find_matching_pair(1, 1)
nnoremap <silent> <Plug>(matchup-g%) :call matchup#motion#find_matching_pair(0, 0)
nnoremap <silent> <Plug>(matchup-%) :call matchup#motion#find_matching_pair(0, 1)
nnoremap <silent> <expr> <SNR>42_(wise) empty(g:v_motion_force) ? 'v' : g:v_motion_force
nnoremap <silent> <Plug>(matchup-hi-surround) :call matchup#matchparen#highlight_surrounding()
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nnoremap <silent> <C-K> :TmuxNavigateUp
nnoremap <silent> <C-J> :TmuxNavigateDown
nnoremap <silent> <C-H> :TmuxNavigateLeft
nnoremap <C-W>z _|
nnoremap <C-W>\ v
nnoremap <C-W>- s
nnoremap <silent> <M-,> :vertical resize -2
nnoremap <silent> <M-.> :vertical resize +2
nnoremap <silent> <M--> :resize +2
nnoremap <silent> <M-=> :resize -2
nnoremap <M-a> ggVG
nmap <C-W><C-D> d
nnoremap <silent> <C-L> :TmuxNavigateRight
inoremap S <Plug>(nvim-surround-insert-line)
inoremap s <Plug>(nvim-surround-insert)
imap <silent> % <Plug>(matchup-c_g%)
inoremap <expr>  v:lua.require'nvim-autopairs'.completion_confirm()
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set confirm
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set helplang=en
set ignorecase
set laststatus=3
set noloadplugins
set packpath=/opt/homebrew/Cellar/neovim/HEAD-0c2860d/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/conform.nvim,~/.local/share/nvim/lazy/Comment.nvim,~/.local/share/nvim/lazy/nvim-treesitter-context,~/.local/share/nvim/lazy/vim-illuminate,~/.local/share/nvim/lazy/indent-blankline.nvim,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/nvim-surround,~/.local/share/nvim/lazy/nvim-treesitter-textobjects,~/.local/share/nvim/lazy/mini.indentscope,~/.local/share/nvim/lazy/nvim-nio,~/.local/share/nvim/lazy/nvim-dap-virtual-text,~/.local/share/nvim/lazy/nvim-dap-ui,~/.local/share/nvim/lazy/nvim-dap,~/.local/share/nvim/lazy/nvim-autopairs,~/.local/share/nvim/lazy/vim-matchup,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/cmp-nvim-lsp,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/nvim-ts-autotag,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/nvim-ts-context-commentstring,~/.local/share/nvim/lazy/lsp_signature.nvim,~/.local/share/nvim/lazy/nvim-lint,~/.local/share/nvim/lazy/mason-nvim-dap.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/mason-tool-installer.nvim,~/.local/share/nvim/lazy/img-clip.nvim,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/lualine.nvim,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/lspkind.nvim,~/.local/share/nvim/lazy/cmp_luasnip,~/.local/share/nvim/lazy/cmp-cmdline,~/.local/share/nvim/lazy/cmp-path,~/.local/share/nvim/lazy/cmp-buffer,~/.local/share/nvim/lazy/nvim-cmp,~/.local/share/nvim/lazy/telescope-undo.nvim,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/vim-tmux-navigator,~/.local/share/nvim/lazy/oil.nvim,~/.local/share/nvim/lazy/nvim-web-devicons,~/.local/share/nvim/lazy/dashboard-nvim,~/.local/share/nvim/lazy/gruvbox-material,/opt/homebrew/Cellar/neovim/HEAD-0c2860d/share/nvim/runtime,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/indent-blankline.nvim/after,~/.local/share/nvim/lazy/vim-matchup/after,~/.local/share/nvim/lazy/cmp-nvim-lsp/after,~/.local/share/nvim/lazy/cmp_luasnip/after,~/.local/share/nvim/lazy/cmp-cmdline/after,~/.local/share/nvim/lazy/cmp-path/after,~/.local/share/nvim/lazy/cmp-buffer/after
set scrolloff=8
set shiftwidth=4
set shortmess=ltToOCFI
set smartcase
set smartindent
set softtabstop=4
set splitbelow
set splitright
set statusline=%#Normal#
set tabstop=4
set termguicolors
set timeoutlen=300
set undofile
set window=58
" vim: set ft=vim :
