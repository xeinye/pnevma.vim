vim9script

# pnevma.vim -- vim colorscheme
# Author:       Anjeel
# Description:  https://github.com/anjeelcain/pnevma.vim

highlight clear

if exists('syntax_on')
        syntax reset
    endif
set background=dark
const g:colors_name = 'pnevma'

# Helper functions {{{ 
# stolen from kohnish/k9 thanks!
def HL(group: string, fg: string, ...vargs: list<string>): void
    var histring = 'hi ' .. group .. ' '

    if len(fg) > 0
        if fg == 'fg'
            histring = histring .. 'guifg=fg ctermfg=fg '
        else
            var c = get(s_colors, fg)
            histring = histring .. 'guifg=' .. c[0] .. ' ctermfg=' .. c[1] .. ' '
        endif
    endif

    if len(vargs) > 0
        if vargs[0] == 'bg'
            histring = histring .. 'guibg=bg ctermbg=bg '
        else
            if vargs[0] != ''
                var c = get(s_colors, vargs[0])
                histring = histring .. 'guibg=' .. c[0] .. ' ctermbg=' .. c[1] .. ' '
            endif
        endif
    endif

    if len(vargs) > 1
        if vargs[1] != ''
            histring = histring .. 'gui=' .. vargs[1] .. ' cterm=' .. vargs[1] .. ' '
        endif
    endif

    if len(vargs) > 2
        if vargs[2] != ''
            var c = get(s_colors, vargs[2])
            histring = histring .. 'guisp=' .. c[0] .. ' '
        endif
    endif

    execute histring
enddef
# }}} 

# Colors table {{{ 
var s_colors = {}

# Normal colors 
s_colors.base0 = ['#2f2e2d', 234] # black
s_colors.base1 = ['#a36666', 88] # red
s_colors.base2 = ['#90a57d', 113] # green 
s_colors.base3 = ['#d7af87', 178] # yellow
s_colors.base4 = ['#7fa5bd', 39] # blue 
s_colors.base5 = ['#c79ec4', 141] # magenta
s_colors.base6 = ['#8adbb4', 48] # cyan
s_colors.base7 = ['#d0d0d0', 252] # white
s_colors.base8 = ['#4a4845', 238] # black
s_colors.base9 = ['#d78787', 174] # red
s_colors.base10 = ['#afbea2', 193] # green 
s_colors.base11 = ['#e4c9af', 187] # yellow
s_colors.base12 = ['#a1bdce', 159] # blue 
s_colors.base13 = ['#d7beda', 175] # magenta
s_colors.base14 = ['#b1e7dd', 152] # cyan
s_colors.base15 = ['#efefef', 15] # white
s_colors.base00 = ['#000000', 232] # black
s_colors.base255 = ['#ffffff', 255] # black

s_colors.extra1 = ['#a280e2', 91] # blue
s_colors.extra2 = ['#bde0fb', 153] # purple


s_colors.foreground = ['#dddddd', 257] # fg
s_colors.background = ['#1c1c1c', 256] # bg
# }}}}  

# Base {{{ 

HL('Normal', 'foreground', 'background')
HL('SignColumn', 'foreground', 'background')
HL('SpecialKey', 'base8', '')
HL('EndOfBuffer', '', 'background')
HL('NonText', 'base0', '')
HL('Directory', 'base12', '')
HL('ErrorMsg', 'base9', 'background')
HL('IncSearch', 'base0', 'base3', 'reverse')
HL('CurSearch', 'base00', 'base3')
HL('Search', 'base00', 'base3')
HL('MoreMsg', 'base2', '')
HL('ModeMsg', 'base7', '', 'bold')
HL('LineNr', 'base8', '')
HL('CursorLineNr', 'base8', '', 'underline')
HL('CursorLineSign', 'base4', '')
HL('CursorLineFold', 'base7', '')
HL('Question', 'base10', '')
HL('Statusline', 'base8', 'base7', 'bold,reverse') #9,00 - 8,7
HL('StatuslineNC', 'base0', 'base8', 'reverse')
HL('VertSplit', 'base0', 'base8', 'reverse')
HL('Title', 'base3', '', 'bold')
HL('Visual', 'base15', 'base0', 'reverse')
HL('VisualNOS', 'base1', '') # S
HL('WarningMsg', 'base0', 'base3', 'bold')
HL('WildMenu', 'base00', 'base2') # - 0,2 - 00,4
HL('Folded', 'base8', 'background')
HL('FoldColumn', 'base7', 'background')
HL('Pmenu', 'base7', 'base8')
HL('PmenuSel', 'base0', 'base4')
HL('PmenuSbar', 'base0', 'base0')
HL('PmenuThumb', 'base2', 'base2')
#HL('Tabline', 'base8', 'background', 'underline') # blue background, black text, green sel,
#HL('TablineSel', 'base0', 'base4')
#HL('TablineFill', 'base8', 'base8') 
HL('Cursorline', 'base0', 'base2', 'none')
HL('CursorColumn', 'base7', 'base8')
HL('ColorColumn', 'base0', 'base4')
HL('QuickFixLine', 'base00', 'base3')
HL('StatusLineTerm', 'base0', 'base2', 'bold')
HL('StatusLineTermNC', 'base0', 'base8', 'reverse')
HL('MatchParen', 'base8', 'base1')

HL('Comment', 'base8', 'background')
HL('Constant', 'base3', 'background')
HL('Special', 'base6', 'background')
HL('Identifier', 'base9', 'background', 'bold')
HL('Statement', 'base1', 'background')
HL('PreProc', 'base3', 'background')
HL('Type', 'base3', 'background')
HL('Underlined', 'base1', 'background', 'underline')

HL('Ignore', 'base0', 'base8')
HL('Error', 'base7', 'base1')
HL('Todo', 'base0', 'base2')
HL('String', 'base2', 'background')
HL('Character', 'base9', 'background')
HL('Number', 'base3', 'background')
HL('Boolean', 'base5', 'background')
HL('Float', 'base5', 'background')
HL('Function', 'base9', 'background', 'bold')
HL('Conditional', 'base5', 'background')
HL('Repeat', 'base3', 'background')
HL('Label', 'base3', 'background')
HL('Operator', 'base7', 'background')
HL('Keyword', 'base5', 'background')
HL('Exception', 'base5', 'background')
HL('Include', 'base4', 'background')
HL('Define', 'base5', 'background')
HL('Macro', 'base3', 'background')
HL('PreCondit', 'base3', 'background')
HL('StorageClass', 'base3', 'background')
HL('Structure', 'base5', 'background')
HL('Typedef', 'base3', 'background')
HL('Tag', 'base3', 'background')
HL('SpecialChar', 'base5', 'background')
HL('Delimiter', 'base5', 'background')
HL('SpecialComment', 'base6', 'background')
HL('Debug', 'base6', 'background')

# }}} 

# Diff {{{
HL('DiffAdd', 'base2', 'background')
    hi link diffAdded diffAdd
HL('DiffChange', 'base2', 'background')
HL('DiffDelete', 'base1', 'background')
    hi link diffRemoved diffDelete

HL('DiffText', 'base4', 'background', 'bold')
# }}}

# Spelling {{{
HL('SpellBad', 'base1', '', 'underline')
HL('SpellCap', 'base4', '', 'underline')
HL('SpellRare', 'base6', '', 'underline')
HL('SpellLocal', 'base5', '', 'underline')
# }}}

# Vim {{{ 
HL('vimUserCommand', 'base9', 'background', 'bold')
HL('vimNotation', 'base4', 'background')
HL('vimComment', 'base8', 'background')
HL('vimMapModKey', 'base4', 'background')
HL('vimBracket', 'base7', 'background')

hi link vimTodo Todo
hi link vimCommand VimUserCommand
hi link vimOption PreProc
hi link vimErrSetting vimError
hi link vimAutoEvent Type
hi link vimGroup Type
hi link vimHLGroup vimGroup
hi link vimFuncName Function
hi link vimSubst vimCommand
hi link vimComment Comment
hi link vim9Comment Comment
hi link vimNumber Number
hi link vimAddress vimMark
hi link vimAutoCmd vimUserCommand
hi link vimLet vimUserCommand
hi link vimMap vimUserCommand
hi link vimMark Number
hi link vimSyntax vimCommand
hi link vimVar Identifier
hi link vimFBVar vimVar
hi link vimInsert vimString
hi link vimBehaveModel vimBehave
hi link vimBehaveError vimEror
hi link vimBehave vimCommand
hi link vimFTCmd vimUserCommand
hi link vimFTOption vimSynType
hi link vimFTError vimError
hi link vimNotFunc vimUserCommand
hi link vimFunctionError vimError
hi link vimLineComment vimComment
hi link vimSpecFile Identifier
hi link vimOper Operator
hi link vimString String
hi link vimRegister SpecialChar
hi link vimCmplxRepeat SpecialChar
hi link vimCtrlChar SpecialChar
hi link vimContinue Special
hi link vimAugroupKey vimCommand
hi link vimAugroupError vimError
hi link vimEnvvar PreProc
hi link vimFunc vimError
hi link vimType Type
hi link vimParenSep Delimiter
hi link vimoperStar vimOper
hi link vimSep Delimiter
hi link vimOperError Error
hi link vimFuncKey vimCommand
hi link vimFuncSID Special
hi link vimAbb vimCommand
hi link vimEchoHL vimCommand
hi link vimHighlight vimCommand
hi link vimLetHereDoc vimString
hi link vimNorm vimCommand 
hi link vimSearch vimString
hi link vimUnmap vimMap
hi link vimPattern Type
hi link vimSpecFileMod vimSpecFile
hi link vimSetString vimString
hi link vimUserAttrb vimSpecial
hi link vimUserAttrbError Error
hi link vimUserAttrbCmplt vimSpecial
hi link vimUserCmdError Error
hi link vimUserAttrbCmpltFunc Special
hi link vimPatSepErr vimError
hi link vimPatSep SpecialChar
hi link vimPatSepZ vimPatSep
hi link vimPatSepZone vimString
hi link vimPatSepR vimPatSep
hi link vimNotPatSep vimString
hi link vimEscape Special
hi link vimStringEnd vimString
hi link vimStringCont vimString
hi link vimSubsTwoBS SpecialChar # vimString 
hi link vimSubstr SpecialChar 
hi link vimSubst1 vimSubst
hi link vimSubstDelim Delimiter
hi link vimSubstFlagErr vimError
hi link vimCollClassErr vimError
hi link vimSubstFlags Special
hi link vimMarkNumber vimNumber
hi link vimPlainMark vimMark
hi link vimPlainRegister vimRegister
hi link vimSetMod vimOption
hi link vimSetSep Statement
hi link vimLetHereDocStart Special
hi link vimLetHereDocStop Special
hi link vimMapMod vimBracket
hi link vimAutoCmdMod Special
hi link vimEchoHLNone vimGroup
hi link vimMapBang vimCommand
hi link vimMapModErr vimError
hi link vimMenuName PreProc
hi link vimMenuMod vimMapMod
hi link vimMenuNameMore vimMenuName
hi link vimFuncEcho vimCommand
hi link vimElseIfErr Error
hi link vimBufnrWarn vimWarn
hi link vimGroupSpecial Special
hi link vimSynError Error
hi link vimSynContains vimSynOption
hi link vimSynContainedin vimSynContains
hi link vimSynNextgroup vimSynOption
hi link vimSynType vimSpecial
hi link vimSynCase Type
hi link vimSynCaseError vimError
hi link vimGroupName vimGroup
hi link vimGroupAdd vimSynOption
#hi link vimGroupRem 
hi link vimIskSep Delimiter
hi link vimSynKeyOpt vimSynOption
hi link vimMtchComment vimComment
hi link vimSynMtchOpt vimSynOption
hi link vimSynRegPat vimString
hi link vimSynPatRange vimString
hi link vimSynNotPatRange vimSynRegPat
hi link vimSynRegOpt vimSynOption
hi link vimSynReg Type
hi link vimSynMtchGrp VimSynOption
hi link vimSyncC Type
hi link vimSyncError Error
hi link vimSyncGroupName vimGroupName
hi link vimSyncKey Type
hi link vimSyncGroup vimGroupName
hi link vimSyncNone Type
hi link vimHiClear vimHighlight
hi link vimHiCtermError vimError
hi link vim9LineComment vimComment
hi link vimSearchDelim Statement
hi link vimError Error
hi link vimKeyCodeError vimError
hi link vimWarn WarningMsg
hi link vimAuHighlight vimHighlight
hi link vimAutoSet vimCommand
hi link vimCondHL vimCommand
hi link vimElseif vimCondHL
hi link vimFold Folded
hi link vimSynOption Special
hi link vimHLMod PreProc
hi link vimKeyCode vimSpecFile
hi link vimKeyword Statement
hi link vimScriptDelim Comment
hi link vimSpecial Type
hi link vimStatement Statement

# }}}

# HTML {{{ 
HL('htmlTagName', 'base6', '') 
HL('htmlTag', 'base255', '') 
HL('htmlArg', 'base9', '', 'bold') 
HL('htmlH1', 'base15', '', 'bold') 
HL('htmlTitle', 'base15', '', 'bold')
HL('htmlEndTag', 'base255', '') 
HL('htmlLink', 'base255', '') 
HL('htmlString', 'base3', '') 
# }}}

# ALE{{{
HL('ALEErrorSign', 'base9', '') 
    hi link ALEError ALEErrorSign
HL('ALEWarningSign', 'base3', '') 
    hi link ALEWarning ALEWarningSign

# }}}

# Vimwiki {{{
HL('vimwikiList', 'base5', 'background') 
HL('vimwikiLink', 'extra2', 'background', 'underline') 
# }}}


