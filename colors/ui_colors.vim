" Vim color file
" Maintainer:   luck07051
" Website:      https://github.com/luck07051/ui-colors

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ui_colors"
set background=dark


function! s:HL(group, fg, ...) "{{{
    let hi_string = ['hi', a:group,
                \ 'guifg=' . a:fg[0],
                \ 'ctermfg=' . a:fg[1]]
    " bg
    if a:0 >= 1
        call add(hi_string, 'guibg=' . a:1[0])
        call add(hi_string, 'ctermbg=' . a:1[1])
    else
        call add(hi_string, 'guibg=none')
        call add(hi_string, 'ctermbg=none')
    endif
    " style
    if a:0 >= 2
        call add(hi_string, 'gui=' . a:2)
        call add(hi_string, 'cterm=' . a:2)
    else
        call add(hi_string, 'gui=none')
        call add(hi_string, 'cterm=none')
    endif
    " special
    if a:0 >= 3
        call add(hi_string, 'guisp=' . a:3[0])
    endif

    execute join(hi_string, ' ')
endfunction
"}}}

let s:c = {  'none':    ['NONE',    'NONE'],
            \'black':   ['#1c1c1c', '234'],
            \'b1':      ['#303030', '236'],
            \'b2':      ['#444444', '238'],
            \'b3':      ['#585858', '240'],
            \'b4':      ['#808080', '244'],
            \'b5':      ['#9e9e9e', '247'],
            \'white':   ['#D0D0D0', '252'],
            \
            \'red':     ['#E67e80', '1'],
            \'green':   ['#87AF87', '2'],
            \'yellow':  ['#EBCB8B', '3'],
            \'blue':    ['#81A1C1', '4'],
            \'magenta': ['#FFB9DC', '5'],
            \'cyan':    ['#87AFAF', '6'],
            \'bred':    ['#D7afaf', '9'],
            \'bgreen':  ['#A3B262', '10'],
            \'byellow': ['#D8AF5F', '11'],
            \'bblue':   ['#3a94c5', '12'],
            \'bmagenta':['#d3869b', '13'],
            \'bcyan':   ['#7FBBB3', '14'],
            \}

"==================== UI ===================="
"===== Column ====="
call s:HL('LineNr',         s:c.b2,     s:c.none)
call s:HL('SignColumn',     s:c.none,   s:c.none)
call s:HL('FoldColumn',     s:c.none,   s:c.none)
"===== Cursor Line ====="
call s:HL('CursorLine',     s:c.none,   s:c.b1)
hi! link CursorColumn CursorLine
call s:HL('CursorLineNr',   s:c.white,  s:c.b1, 'bold')
hi! link CursorLineSign CursorLineNr
hi! link CursorLineFold CursorLineNr

"===== Status Line ====="
call s:HL('StatusLine',     s:c.none,   s:c.b3)
call s:HL('StatusLineNC',   s:c.none,   s:c.b1)
"===== Tab ====="
call s:HL('TabLine',        s:c.b4,     s:c.none)
call s:HL('TabLineSel',     s:c.white,  s:c.b3)
call s:HL('TabLineFill',    s:c.none,   s:c.none)
"===== Split ====="
call s:HL('VertSplit',      s:c.b1,     s:c.b1)

"===== Menu ====="
call s:HL('Pmenu',          s:c.white,  s:c.b1)
call s:HL('PmenuSel',       s:c.white,  s:c.b3)
call s:HL('PmenuSbar',      s:c.none,   s:c.b1)
call s:HL('PmenuThumb',     s:c.none,   s:c.b4)
call s:HL('Wildmenu',       s:c.white,  s:c.b2)

"===== Msg====="
call s:HL('ErrorMsg',       s:c.white,  s:c.none)
call s:HL('warningMsg',     s:c.red,    s:c.none)
call s:HL('MoreMsg',        s:c.magenta,s:c.none, 'bold')
call s:HL('ModeMsg',        s:c.white,  s:c.none, 'bold')
call s:HL('Question',       s:c.magenta,s:c.none, 'bold')
call s:HL('Title',          s:c.magenta,s:c.none, 'bold')

"===== Search ====="
call s:HL('Search',         s:c.black,  s:c.yellow)
hi! link IncSearch Search

"===== Visual ====="
call s:HL('Visual',         s:c.none,   s:c.b3)

"===== Diff ====="
"call s:HL('DiffAdd',       s:c.white,  s:c.green)
"call s:HL('DiffChange',    s:c.white,  s:c.cyan)
"call s:HL('DiffDelete',    s:c.white,  s:c.bred)
"call s:HL('DiffText',      s:c.white,  s:c.red)

"===== Spell ====="
"call s:HL('SpellBad',      s:c.none,   s:c.none, 'underline')
"call s:HL('SpellCap',      s:c.none,   s:c.none, 'underline')
"call s:HL('SpellRare',     s:c.none,   s:c.none, 'underline')
"call s:HL('SpellLocal',    s:c.none,   s:c.none, 'underline')



"==================== Syntax ===================="
call s:HL('Comment',    s:c.b4)
call s:HL('Constant',   s:c.bgreen)
call s:HL('Identifier', s:c.white)
call s:HL('Statement',  s:c.yellow)
call s:HL('PreProc',    s:c.bred)
call s:HL('Type',       s:c.blue)
call s:HL('Special',    s:c.cyan)

call s:HL('Underlined', s:c.none,   s:c.none, 'underline')
call s:HL('Ignore',     s:c.none,   s:c.none)
call s:HL('Todo',       s:c.yellow, s:c.none, 'bold')
call s:HL('Error',      s:c.red,    s:c.none, 'bold')

"===== Special ====="
call s:HL('MatchParen',     s:c.none,   s:c.b2, 'bold')
call s:HL('Conceal',        s:c.none,   s:c.none)
call s:HL('Folded',         s:c.b5,     s:c.none, 'bold')
call s:HL('ColorColumn',    s:c.none,   s:c.b3)
call s:HL('NonText',        s:c.b3,     s:c.none)
call s:HL('SpecialKey',     s:c.b3,     s:c.none)
call s:HL('Directory',      s:c.bblue,  s:c.none)

"===== Diagnostic ====="
call s:HL('DiagnosticError',    s:c.red)
call s:HL('DiagnosticWarn',     s:c.byellow)
call s:HL('DiagnosticInfo',     s:c.cyan)
call s:HL('DiagnosticHint',     s:c.white)
call s:HL('DiagnosticunderLineError',    s:c.none, s:c.none, 'underline', s:c.red)
call s:HL('DiagnosticunderLineWarn',     s:c.none, s:c.none, 'underline', s:c.byellow)
call s:HL('DiagnosticunderLineInfo',     s:c.none, s:c.none, 'underline', s:c.cyan)
call s:HL('DiagnosticunderLineHint',     s:c.none, s:c.none, 'underline', s:c.white)


"==================== PLUGIN ===================="
"===== ale ====="
"hi ALEErrorSign     ctermfg=1   ctermbg=none
"hi ALEWarningSign   ctermfg=3   ctermbg=none
"hi SpellBad         ctermfg=1   ctermbg=none    cterm=bold,underline
"hi SpellCap         ctermfg=3   ctermbg=none    cterm=bold,underline

"===== LightSpeed ====="
"hi LightspeedCursor         ctermfg=0   ctermbg=7
"hi LightspeedUnlabeledMatch ctermfg=255 ctermbg=none    cterm=bold
"hi LightspeedShortcut       ctermfg=5   ctermbg=none    cterm=bold
"hi LightspeedLabel          ctermfg=0   ctermbg=5       cterm=bold
"hi LightspeedlabelDistant   ctermfg=0   ctermbg=4       cterm=bold

"===== Cmp ====="
call s:HL('CmpItemAbbrMatch', s:c.blue, s:c.none)
call s:HL('CmpItemKind',      s:c.cyan, s:c.none)
call s:HL('CmpItemMenu',      s:c.b4,   s:c.none)

"===== illuminate ====="
hi! link LspReferenceTexta MatchParen
hi! link LspReferenceWrite MatchParen
hi! link LspReferenceRead MatchParen
