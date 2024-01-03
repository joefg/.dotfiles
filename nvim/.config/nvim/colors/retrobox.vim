" Name:         Retro Box
" Description:  Retro groove color scheme similar to gruvbox originally designed by morhetz <morhetz@gmail.com>
" Author:       Maxim Kim <habamax@gmail.com>, ported from gruvbox8 of Lifepillar <lifepillar@lifepillar.me>
" Maintainer:   Maxim Kim <habamax@gmail.com>, ported from gruvbox8 of Lifepillar <lifepillar@lifepillar.me>
" Website:      https://www.github.com/vim/colorschemes
" License:      Vim License (see `:help license`)
" Last Updated: Weds 3 Mar 2024 17:14:04 GMT

" Generated by Colortemplate v2.2.0

hi clear
let g:colors_name = 'retrobox'

hi! link CursorColumn CursorLine
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link VisualNOS Visual
hi! link Tag Special
hi! link lCursor Cursor
hi! link MessageWindow PMenu
hi! link PopupNotification Todo
hi! link CurSearch Search

if &background ==# 'dark'
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#1c1c1c', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#a89984', '#928374', '#fb4934', '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2']
  endif
  hi Normal guifg=#ebdbb2 guibg=#1c1c1c gui=NONE cterm=NONE
  hi CursorLineNr guifg=#fabd2f guibg=#303030 gui=NONE cterm=NONE
  hi FoldColumn guifg=#928374 guibg=#1c1c1c gui=NONE cterm=NONE
  hi SignColumn guifg=#928374 guibg=#1c1c1c gui=NONE cterm=NONE
  hi VertSplit guifg=#303030 guibg=#1c1c1c gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#000000 gui=NONE cterm=NONE
  hi Comment guifg=#928374 guibg=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#303030 gui=NONE cterm=NONE
  hi Error guifg=#fb4934 guibg=#1c1c1c gui=bold,reverse cterm=bold,reverse
  hi ErrorMsg guifg=#1c1c1c guibg=#fb4934 gui=bold cterm=bold
  hi Folded guifg=#928374 guibg=#121212 gui=NONE cterm=NONE
  hi LineNr guifg=#7c6f64 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=NONE guibg=#504945 gui=bold,underline cterm=bold,underline
  hi NonText guifg=#504945 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#ebdbb2 guibg=#3c3836 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#3c3836 gui=NONE cterm=NONE
  hi PmenuSel guifg=#3c3836 guibg=#83a598 gui=bold cterm=bold
  hi PmenuThumb guifg=NONE guibg=#7c6f64 gui=NONE cterm=NONE
  hi PmenuKind guifg=#fb4934 guibg=#3c3836 gui=NONE cterm=NONE
  hi PmenuKindSel guifg=#fb4934 guibg=#83a598 gui=NONE cterm=NONE
  hi PmenuExtra guifg=#a89984 guibg=#3c3836 gui=NONE cterm=NONE
  hi PmenuExtraSel guifg=#303030 guibg=#83a598 gui=NONE cterm=NONE
  hi SpecialKey guifg=#928374 guibg=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#504945 guibg=#ebdbb2 gui=bold,reverse cterm=bold,reverse
  hi StatusLineNC guifg=#3c3836 guibg=#a89984 gui=reverse cterm=reverse
  hi TabLine guifg=#a89984 guibg=#3c3836 gui=NONE cterm=NONE
  hi TabLineFill guifg=#ebdbb2 guibg=#3c3836 gui=NONE cterm=NONE
  hi TabLineSel guifg=#fbf1c7 guibg=#1c1c1c gui=bold cterm=bold
  hi ToolbarButton guifg=#fbf1c7 guibg=#303030 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Visual guifg=#1c1c1c guibg=#83a598 gui=NONE cterm=NONE
  hi WildMenu guifg=#83a598 guibg=#504945 gui=bold cterm=bold
  hi EndOfBuffer guifg=#504945 guibg=NONE gui=NONE cterm=NONE
  hi Conceal guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd guifg=#b8bb26 guibg=#1c1c1c gui=reverse cterm=reverse
  hi DiffChange guifg=#8ec07c guibg=#1c1c1c gui=reverse cterm=reverse
  hi DiffDelete guifg=#fb4934 guibg=#1c1c1c gui=reverse cterm=reverse
  hi DiffText guifg=#fabd2f guibg=#1c1c1c gui=reverse cterm=reverse
  hi Directory guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
  hi IncSearch guifg=#fe8019 guibg=#1c1c1c gui=reverse cterm=reverse
  hi ModeMsg guifg=#fabd2f guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#fabd2f guibg=NONE gui=bold cterm=bold
  hi Question guifg=#fe8019 guibg=NONE gui=bold cterm=bold
  hi Search guifg=#98971a guibg=#1c1c1c gui=reverse cterm=reverse
  hi QuickFixLine guifg=#8ec07c guibg=#1c1c1c gui=reverse cterm=reverse
  hi SpellBad guifg=#fb4934 guibg=NONE guisp=#fb4934 gui=undercurl cterm=underline
  hi SpellCap guifg=#83a598 guibg=NONE guisp=#83a598 gui=undercurl cterm=underline
  hi SpellLocal guifg=#8ec07c guibg=NONE guisp=#8ec07c gui=undercurl cterm=underline
  hi SpellRare guifg=#d3869b guibg=NONE guisp=#d3869b gui=undercurl cterm=underline
  hi Title guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg=#fb4934 guibg=NONE gui=bold cterm=bold
  hi Boolean guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Character guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Define guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Delimiter guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#fb4934 guibg=#1c1c1c gui=bold,reverse cterm=bold,reverse
  hi Exception guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Float guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#b8bb26 guibg=NONE gui=bold cterm=bold
  hi Identifier guifg=#83a598 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi Include guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Keyword guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Label guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Macro guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Number guifg=#d3869b guibg=NONE gui=NONE cterm=NONE
  hi Operator guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#fb4934 guibg=NONE gui=NONE cterm=NONE
  hi StorageClass guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#fe8019 guibg=NONE gui=NONE cterm=NONE
  hi String guifg=#b8bb26 guibg=NONE gui=NONE cterm=NONE
  hi Structure guifg=#8ec07c guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=fg guibg=#1c1c1c gui=bold cterm=bold
  hi Type guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
  hi Typedef guifg=#fabd2f guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#83a598 guibg=NONE gui=underline cterm=underline
  hi CursorIM guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
else
  " Light background
  if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = ['#3c3836', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#7c6f64', '#928374', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#fbf1c7']
  endif
  hi Normal guifg=#3c3836 guibg=#fbf1c7 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#b57614 guibg=#e5d4b1 gui=NONE cterm=NONE
  hi FoldColumn guifg=#928374 guibg=#fbf1c7 gui=NONE cterm=NONE
  hi SignColumn guifg=#3c3836 guibg=#fbf1c7 gui=NONE cterm=NONE
  hi VertSplit guifg=#bdae93 guibg=#fbf1c7 gui=NONE cterm=NONE
  hi ColorColumn guifg=NONE guibg=#ebe1b7 gui=NONE cterm=NONE
  hi Comment guifg=#928374 guibg=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#e5d4b1 gui=NONE cterm=NONE
  hi Error guifg=#9d0006 guibg=#fbf1c7 gui=bold,reverse cterm=bold,reverse
  hi ErrorMsg guifg=#fbf1c7 guibg=#9d0006 gui=bold cterm=bold
  hi Folded guifg=#928374 guibg=#ffffd7 gui=NONE cterm=NONE
  hi LineNr guifg=#a89984 guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=NONE guibg=#e5d4b1 gui=bold,underline cterm=bold,underline
  hi NonText guifg=#e5d4b1 guibg=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#3c3836 guibg=#e5d4b1 gui=NONE cterm=NONE
  hi PmenuSbar guifg=NONE guibg=#e5d4b1 gui=NONE cterm=NONE
  hi PmenuSel guifg=#e5d4b1 guibg=#076678 gui=bold cterm=bold
  hi PmenuThumb guifg=NONE guibg=#a89984 gui=NONE cterm=NONE
  hi PmenuKind guifg=#9d0006 guibg=#e5d4b1 gui=NONE cterm=NONE
  hi PmenuKindSel guifg=#9d0006 guibg=#076678 gui=NONE cterm=NONE
  hi PmenuExtra guifg=#7c6f64 guibg=#e5d4b1 gui=NONE cterm=NONE
  hi PmenuExtraSel guifg=#bdae93 guibg=#076678 gui=NONE cterm=NONE
  hi SpecialKey guifg=#928374 guibg=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#bdae93 guibg=#3c3836 gui=bold,reverse cterm=bold,reverse
  hi StatusLineNC guifg=#ebdbb2 guibg=#3c3836 gui=reverse cterm=reverse
  hi TabLine guifg=#665c54 guibg=#ebdbb2 gui=NONE cterm=NONE
  hi TabLineFill guifg=#ebdbb2 guibg=#ebdbb2 gui=NONE cterm=NONE
  hi TabLineSel guifg=#282828 guibg=#fbf1c7 gui=bold cterm=bold
  hi ToolbarButton guifg=#282828 guibg=#bdae93 gui=bold cterm=bold
  hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Visual guifg=#fbf1c7 guibg=#076678 gui=NONE cterm=NONE
  hi WildMenu guifg=#076678 guibg=#e5d4b1 gui=bold cterm=bold
  hi EndOfBuffer guifg=#e5d4b1 guibg=NONE gui=NONE cterm=NONE
  hi Conceal guifg=#076678 guibg=NONE gui=NONE cterm=NONE
  hi Cursor guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd guifg=#79740e guibg=#fbf1c7 gui=reverse cterm=reverse
  hi DiffChange guifg=#427b58 guibg=#fbf1c7 gui=reverse cterm=reverse
  hi DiffDelete guifg=#9d0006 guibg=#fbf1c7 gui=reverse cterm=reverse
  hi DiffText guifg=#b57614 guibg=#fbf1c7 gui=reverse cterm=reverse
  hi Directory guifg=#79740e guibg=NONE gui=bold cterm=bold
  hi IncSearch guifg=#ff5f00 guibg=#fbf1c7 gui=reverse cterm=reverse
  hi ModeMsg guifg=#3c3836 guibg=NONE gui=bold cterm=bold
  hi MoreMsg guifg=#3c3836 guibg=NONE gui=bold cterm=bold
  hi Question guifg=#ff5f00 guibg=NONE gui=bold cterm=bold
  hi Search guifg=#98971a guibg=#fbf1c7 gui=reverse cterm=reverse
  hi QuickFixLine guifg=#427b58 guibg=#fbf1c7 gui=reverse cterm=reverse
  hi SpellBad guifg=#9d0006 guibg=NONE guisp=#9d0006 gui=undercurl cterm=underline
  hi SpellCap guifg=#076678 guibg=NONE guisp=#076678 gui=undercurl cterm=underline
  hi SpellLocal guifg=#427b58 guibg=NONE guisp=#427b58 gui=undercurl cterm=underline
  hi SpellRare guifg=#8f3f71 guibg=NONE guisp=#8f3f71 gui=undercurl cterm=underline
  hi Title guifg=#79740e guibg=NONE gui=bold cterm=bold
  hi WarningMsg guifg=#9d0006 guibg=NONE gui=bold cterm=bold
  hi Boolean guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Character guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Define guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Delimiter guifg=#ff5f00 guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#9d0006 guibg=#fbf1c7 gui=bold,reverse cterm=bold,reverse
  hi Exception guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Float guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#79740e guibg=NONE gui=bold cterm=bold
  hi Identifier guifg=#076678 guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi Include guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Keyword guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Label guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Macro guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Number guifg=#8f3f71 guibg=NONE gui=NONE cterm=NONE
  hi Operator guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi SpecialComment guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#9d0006 guibg=NONE gui=NONE cterm=NONE
  hi StorageClass guifg=#ff5f00 guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#ff5f00 guibg=NONE gui=NONE cterm=NONE
  hi String guifg=#79740e guibg=NONE gui=NONE cterm=NONE
  hi Structure guifg=#427b58 guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=fg guibg=#fbf1c7 gui=bold cterm=bold
  hi Type guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
  hi Typedef guifg=#b57614 guibg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#076678 guibg=NONE gui=underline cterm=underline
  hi CursorIM guifg=NONE guibg=NONE gui=reverse ctermfg=NONE ctermbg=NONE cterm=reverse
endif

if &background ==# 'dark'
  hi Normal ctermfg=187 ctermbg=234 cterm=NONE
  hi CursorLineNr ctermfg=214 ctermbg=236 cterm=NONE
  hi FoldColumn ctermfg=102 ctermbg=234 cterm=NONE
  hi SignColumn ctermfg=102 ctermbg=234 cterm=NONE
  hi VertSplit ctermfg=236 ctermbg=234 cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=16 cterm=NONE
  hi Comment ctermfg=102 ctermbg=NONE cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
  hi Error ctermfg=203 ctermbg=234 cterm=bold,reverse
  hi ErrorMsg ctermfg=234 ctermbg=203 cterm=bold
  hi Folded ctermfg=102 ctermbg=233 cterm=NONE
  hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=239 cterm=bold,underline
  hi NonText ctermfg=239 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=187 ctermbg=237 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=237 cterm=NONE
  hi PmenuSel ctermfg=237 ctermbg=109 cterm=bold
  hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
  hi PmenuKind ctermfg=203 ctermbg=237 cterm=NONE
  hi PmenuKindSel ctermfg=203 ctermbg=109 cterm=NONE
  hi PmenuExtra ctermfg=102 ctermbg=237 cterm=NONE
  hi PmenuExtraSel ctermfg=236 ctermbg=109 cterm=NONE
  hi SpecialKey ctermfg=102 ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=239 ctermbg=187 cterm=bold,reverse
  hi StatusLineNC ctermfg=237 ctermbg=102 cterm=reverse
  hi TabLine ctermfg=102 ctermbg=237 cterm=NONE
  hi TabLineFill ctermfg=187 ctermbg=237 cterm=NONE
  hi TabLineSel ctermfg=230 ctermbg=234 cterm=bold
  hi ToolbarButton ctermfg=230 ctermbg=236 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Visual ctermfg=234 ctermbg=109 cterm=NONE
  hi WildMenu ctermfg=109 ctermbg=239 cterm=bold
  hi EndOfBuffer ctermfg=239 ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=109 ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd ctermfg=142 ctermbg=234 cterm=reverse
  hi DiffChange ctermfg=107 ctermbg=234 cterm=reverse
  hi DiffDelete ctermfg=203 ctermbg=234 cterm=reverse
  hi DiffText ctermfg=214 ctermbg=234 cterm=reverse
  hi Directory ctermfg=142 ctermbg=NONE cterm=bold
  hi IncSearch ctermfg=208 ctermbg=234 cterm=reverse
  hi ModeMsg ctermfg=214 ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=214 ctermbg=NONE cterm=bold
  hi Question ctermfg=208 ctermbg=NONE cterm=bold
  hi Search ctermfg=100 ctermbg=234 cterm=reverse
  hi QuickFixLine ctermfg=107 ctermbg=234 cterm=reverse
  hi SpellBad ctermfg=203 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=109 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=107 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=175 ctermbg=NONE cterm=underline
  hi Title ctermfg=142 ctermbg=NONE cterm=bold
  hi WarningMsg ctermfg=203 ctermbg=NONE cterm=bold
  hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE
  hi Character ctermfg=175 ctermbg=NONE cterm=NONE
  hi Conditional ctermfg=203 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=175 ctermbg=NONE cterm=NONE
  hi Define ctermfg=107 ctermbg=NONE cterm=NONE
  hi Debug ctermfg=203 ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=208 ctermbg=NONE cterm=NONE
  hi Error ctermfg=203 ctermbg=234 cterm=bold,reverse
  hi Exception ctermfg=203 ctermbg=NONE cterm=NONE
  hi Float ctermfg=175 ctermbg=NONE cterm=NONE
  hi Function ctermfg=142 ctermbg=NONE cterm=bold
  hi Identifier ctermfg=109 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
  hi Include ctermfg=107 ctermbg=NONE cterm=NONE
  hi Keyword ctermfg=203 ctermbg=NONE cterm=NONE
  hi Label ctermfg=203 ctermbg=NONE cterm=NONE
  hi Macro ctermfg=107 ctermbg=NONE cterm=NONE
  hi Number ctermfg=175 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=107 ctermbg=NONE cterm=NONE
  hi PreCondit ctermfg=107 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=107 ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=203 ctermbg=NONE cterm=NONE
  hi SpecialChar ctermfg=203 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=203 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=203 ctermbg=NONE cterm=NONE
  hi StorageClass ctermfg=208 ctermbg=NONE cterm=NONE
  hi Special ctermfg=208 ctermbg=NONE cterm=NONE
  hi String ctermfg=142 ctermbg=NONE cterm=NONE
  hi Structure ctermfg=107 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=fg ctermbg=234 cterm=bold
  hi Type ctermfg=214 ctermbg=NONE cterm=NONE
  hi Typedef ctermfg=214 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=109 ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
else
  " Light background
  hi Normal ctermfg=237 ctermbg=230 cterm=NONE
  hi CursorLineNr ctermfg=172 ctermbg=188 cterm=NONE
  hi FoldColumn ctermfg=102 ctermbg=230 cterm=NONE
  hi SignColumn ctermfg=237 ctermbg=230 cterm=NONE
  hi VertSplit ctermfg=144 ctermbg=230 cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=229 cterm=NONE
  hi Comment ctermfg=102 ctermbg=NONE cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=188 cterm=NONE
  hi Error ctermfg=124 ctermbg=230 cterm=bold,reverse
  hi ErrorMsg ctermfg=230 ctermbg=124 cterm=bold
  hi Folded ctermfg=102 ctermbg=231 cterm=NONE
  hi LineNr ctermfg=137 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=188 cterm=bold,underline
  hi NonText ctermfg=188 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=237 ctermbg=188 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=188 cterm=NONE
  hi PmenuSel ctermfg=188 ctermbg=23 cterm=bold
  hi PmenuThumb ctermfg=NONE ctermbg=137 cterm=NONE
  hi PmenuKind ctermfg=124 ctermbg=188 cterm=NONE
  hi PmenuKindSel ctermfg=124 ctermbg=23 cterm=NONE
  hi PmenuExtra ctermfg=243 ctermbg=188 cterm=NONE
  hi PmenuExtraSel ctermfg=144 ctermbg=23 cterm=NONE
  hi SpecialKey ctermfg=102 ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=144 ctermbg=237 cterm=bold,reverse
  hi StatusLineNC ctermfg=187 ctermbg=237 cterm=reverse
  hi TabLine ctermfg=59 ctermbg=187 cterm=NONE
  hi TabLineFill ctermfg=187 ctermbg=187 cterm=NONE
  hi TabLineSel ctermfg=235 ctermbg=230 cterm=bold
  hi ToolbarButton ctermfg=235 ctermbg=144 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Visual ctermfg=230 ctermbg=23 cterm=NONE
  hi WildMenu ctermfg=23 ctermbg=188 cterm=bold
  hi EndOfBuffer ctermfg=188 ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=23 ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE cterm=reverse
  hi DiffAdd ctermfg=64 ctermbg=230 cterm=reverse
  hi DiffChange ctermfg=29 ctermbg=230 cterm=reverse
  hi DiffDelete ctermfg=124 ctermbg=230 cterm=reverse
  hi DiffText ctermfg=172 ctermbg=230 cterm=reverse
  hi Directory ctermfg=64 ctermbg=NONE cterm=bold
  hi IncSearch ctermfg=202 ctermbg=230 cterm=reverse
  hi ModeMsg ctermfg=237 ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=237 ctermbg=NONE cterm=bold
  hi Question ctermfg=202 ctermbg=NONE cterm=bold
  hi Search ctermfg=100 ctermbg=230 cterm=reverse
  hi QuickFixLine ctermfg=29 ctermbg=230 cterm=reverse
  hi SpellBad ctermfg=124 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=23 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=29 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=126 ctermbg=NONE cterm=underline
  hi Title ctermfg=64 ctermbg=NONE cterm=bold
  hi WarningMsg ctermfg=124 ctermbg=NONE cterm=bold
  hi Boolean ctermfg=126 ctermbg=NONE cterm=NONE
  hi Character ctermfg=126 ctermbg=NONE cterm=NONE
  hi Conditional ctermfg=124 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=126 ctermbg=NONE cterm=NONE
  hi Define ctermfg=29 ctermbg=NONE cterm=NONE
  hi Debug ctermfg=124 ctermbg=NONE cterm=NONE
  hi Delimiter ctermfg=202 ctermbg=NONE cterm=NONE
  hi Error ctermfg=124 ctermbg=230 cterm=bold,reverse
  hi Exception ctermfg=124 ctermbg=NONE cterm=NONE
  hi Float ctermfg=126 ctermbg=NONE cterm=NONE
  hi Function ctermfg=64 ctermbg=NONE cterm=bold
  hi Identifier ctermfg=23 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
  hi Include ctermfg=29 ctermbg=NONE cterm=NONE
  hi Keyword ctermfg=124 ctermbg=NONE cterm=NONE
  hi Label ctermfg=124 ctermbg=NONE cterm=NONE
  hi Macro ctermfg=29 ctermbg=NONE cterm=NONE
  hi Number ctermfg=126 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=29 ctermbg=NONE cterm=NONE
  hi PreCondit ctermfg=29 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=29 ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=124 ctermbg=NONE cterm=NONE
  hi SpecialChar ctermfg=124 ctermbg=NONE cterm=NONE
  hi SpecialComment ctermfg=124 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=124 ctermbg=NONE cterm=NONE
  hi StorageClass ctermfg=202 ctermbg=NONE cterm=NONE
  hi Special ctermfg=202 ctermbg=NONE cterm=NONE
  hi String ctermfg=64 ctermbg=NONE cterm=NONE
  hi Structure ctermfg=29 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=fg ctermbg=230 cterm=bold
  hi Type ctermfg=172 ctermbg=NONE cterm=NONE
  hi Typedef ctermfg=172 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=23 ctermbg=NONE cterm=underline
  hi CursorIM ctermfg=NONE ctermbg=NONE cterm=reverse
endif
finish

" Color: neutralred              #cc241d        160            DarkRed
" Color: neutralgreen            #98971a        100            DarkGreen
" Color: neutralyellow           #d79921        172            DarkYellow
" Color: neutralblue             #458588        66             DarkBlue
" Color: neutralpurple           #b16286        132            DarkMagenta
" Color: neutralaqua             #689d6a        71             DarkCyan
" Color: neutralorange           #d65d0e        166            LightRed
" Background: dark
" Color: bg0                     #1c1c1c        234            Black
" Color: bg1                     #3c3836        237            DarkGray
" Color: bg2                     #504945        239            DarkGray
" Color: bg3                     #303030        236
" Color: bg4                     #7c6f64        243
" Color: bg5                     #000000        16             DarkGray
" Color: bg6                     #121212        233            DarkGray
" Color: fg0                     #fbf1c7        230            White
" Color: fg1                     #ebdbb2        187            White
" Color: fg2                     #d5c4a1        187
" Color: fg3                     #bdae93        144
" Color: fg4                     #a89984        102            gray
" Color: grey                    #928374        102            DarkGray
" Color: red                     #fb4934        203            Red
" Color: green                   #b8bb26        142            Green
" Color: yellow                  #fabd2f        214            Yellow
" Color: blue                    #83a598        109            Blue
" Color: purple                  #d3869b        175            Magenta
" Color: aqua                    #8ec07c        107            Cyan
" Color: orange                  #fe8019        208            Magenta
" Term colors: bg0  neutralred neutralgreen neutralyellow neutralblue neutralpurple neutralaqua fg4
" Term colors: grey red        green        yellow        blue        purple        aqua        fg1
" Background: light
" Color: bg0                     #fbf1c7        230            White
" Color: bg1                     #ebdbb2        187            Grey
" Color: bg2                     #e5d4b1        188            Grey
" Color: bg3                     #bdae93        144
" Color: bg4                     #a89984        137
" Color: bg5                     #ebe1b7        229            Grey
" Color: bg6                     #ffffd7        231            Grey
" Color: fg0                     #282828        235            DarkGray
" Color: fg1                     #3c3836        237            Black
" Color: fg2                     #503836        237
" Color: fg3                     #665c54        59
" Color: fg4                     #7c6f64        243            Black
" Color: grey                    #928374        102            DarkGray
" Color: red                     #9d0006        124            Red
" Color: green                   #79740e        64             Green
" Color: yellow                  #b57614        172            Yellow
" Color: blue                    #076678        23             Blue
" Color: purple                  #8f3f71        126            Magenta
" Color: aqua                    #427b58        29             Cyan
" Color: orange                  #ff5f00        202            Magenta
" Term colors: fg1  neutralred neutralgreen neutralyellow neutralblue neutralpurple neutralaqua fg4
" Term colors: grey red        green        yellow        blue        purple        aqua        bg0
" Background: any
" vim: et ts=2 sw=2
