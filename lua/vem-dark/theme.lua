---@class Theme
local M = {}

local hi = function(name, val, cterm)
  -- Force links
  val.force = true
  -- Make sure that `cterm` attribute is not populated from `gui`
  cterm = cterm or {}
  -- Define global highlight
  vim.api.nvim_set_hl(0, name, val)
end

M.apply = function()
  local c = require('vem-dark.colors')

  local italic = true

  local vemTermBold = { bold = true }
  local vemTermReverse = { reverse = true }
  local vemTermUnderline = { underline = true }
  local vemTermItalic = { italic = italic }
  -- Normal text
  hi('Normal', { fg = c.vemFront, bg = c.vemBack, ctermfg = c.vemTermFront, ctermbg = c.vemTermBack })
  -- Cursor
  hi('Cursor', { fg = c.vemWhite, bg = c.vemCursorLight, ctermfg = c.vemTermWhite, ctermbg = c.vemTermIntenseRed })
  hi('CursorIM', { fg = c.vemGrey, bg = c.vemGreen, ctermfg = c.vemTermWhite, ctermbg = c.vemTermYellow })
  -- Line numbers
  hi('LineNr', { fg = c.vemLine, bg = c.vemColumnBack, ctermfg = c.vemTermLineNrFront, ctermbg = c.vemTermLineNrBack })
  hi('CursorLineNr', { fg = c.vemLineNr, bg = c.vemNonTextBack, ctermfg = c.vemTermWhite, ctermbg = c.vemTermLineNrBack, cterm = vemTermBold })
  -- Visual
  hi('Visual', { fg = c.vemWhite, bg = c.vemSelection, ctermfg = c.vemTermWhite, ctermbg = c.vemTermBlue })
  hi('VisualNOS', { fg = c.vemWhite, bg = c.vemSelection, ctermfg = c.vemTermVisualFront, ctermbg = c.vemTermVisualBack })
  -- Search
  hi('Search', { fg = c.vemSearchFront, bg = c.vemSearchBack, ctermfg = c.vemTermBlack, ctermbg = c.vemTermYellow })
  hi('IncSearch', { fg = c.vemSearchFront, bg = c.vemSearchBack, ctermfg = c.vemTermBlack, ctermbg = c.vemTermYellow })
  hi('WildMenu', { fg = c.vemSearchFront, bg = c.vemSearchBack, bold = true, ctermfg = c.vemTermBlack, ctermbg = c.vemTermYellow })
  hi('MatchParen', { fg = c.vemDimHighlight, bg = c.vemNone, bold = true, ctermfg = c.vemTermRed, ctermbg = c.vemNone, cterm = vemTermBold })
  -- Current line & column
  hi('CursorLine', {bg = c.vemCursorDarkDark, cterm = vemTermUnderline })
  hi('ColorColumn', {bg = c.vemCursorDarkDark })
  hi('CursorColumn', {bg = c.vemCursorDarkDark, ctermbg = c.vemTermVisualBack })
  hi('QuickFixLine', { fg = c.vemWhite, bg = c.vemCursorDarkDark, ctermfg = c.vemTermWhite, ctermbg = c.vemTermVisualBack })
  -- Windows, Tabline, Statusline
  hi('VertSplit', { fg = c.vemSplitDark, bg = c.vemSplitDark, ctermfg = c.vemTermBorder, ctermbg = c.vemTermBorder })
  hi('WinSeparator', { link = 'VertSplit' })
  hi('StatusLine', { fg = c.vemStatusLineFront, bg = c.vemSplitDark, ctermfg = c.vemTermWhite, ctermbg = c.vemTermBorder })
  hi('StatusLineNC', { fg = c.vemStatusLineFront, bg = c.vemLine, italic = italic, ctermfg = c.vemTermStatusLineFront, ctermbg = c.vemTermStatusLineBack, cterm = vemTermItalic })
  hi('TabLine', { fg = c.vemTabLineLightGrey, bg = c.vemBack, ctermfg = c.vemTermTabLineFront, ctermbg = c.vemTermTabLineBack })
  hi('TabLineSel', { fg = c.vemBack, bg = c.vemWhite, bold = true, ctermfg = c.vemTermTabLineFront, ctermbg = c.vemTermWhite, cterm = vemTermBold })
  hi('TabLineFill', { fg = c.vemStatusLineFront, bg = c.vemCursorDarkDark, italic = italic, ctermfg = c.vemTermWhite, ctermbg = c.vemTermWhite })
  -- Terminal
  hi('Terminal', { fg = c.vemFront, bg = c.vemNonTextBack, ctermfg = c.vemTermWhite, ctermbg = c.vemTermTerminalBack })
  hi('StatusLineTerm', { fg = c.vemStatusLineFront, bg = c.vemSplitDark, ctermfg = c.vemTermWhite, ctermbg = c.vemTermBorder })
  hi('StatusLineTermNC', { fg = c.vemLine, bg = c.vemSelection, italic = italic, ctermfg = c.vemTermStatusLineFront, ctermbg = c.vemTermStatusLineBack, cterm = vemTermItalic })
  -- Pmenu
  hi('Pmenu', { fg = c.vemFront, bg = c.vemCursorDarkDark, ctermfg = c.vemTermWhite, ctermbg = c.vemTermBorder })
  hi('PmenuSel', { fg = c.vemBlack, bg = c.vemGreen, ctermfg = c.vemTermBlack, ctermbg = c.vemTermYellow })
  hi('PmenuSbar', {bg = c.vemBack, ctermbg = c.vemTermBlack })
  hi('PmenuThumb', {bg = c.vemGrey, ctermbg = c.vemTermGrey })
  -- Folds, Conceal
  hi('Conceal', { fg = c.vemFoldFront, bg = c.vemFoldBack })
  hi('FoldColumn', { fg = c.vemFoldFront, bg = c.vemFoldBack, ctermfg = c.vemTermFoldFront, ctermbg = c.vemTermFoldBack })
  hi('Folded', { link = 'FoldColumn' })
  -- Signs
  hi('SignColumn', { fg = c.vemBlue, bg = c.vemColumnBack, ctermfg = c.vemTermGrey, ctermbg = c.vemTermLineNrBack })
  -- Diffs
  hi('DiffAdd', { fg = c.vemFront, bg = c.vemDiffAddBack, ctermfg = c.vemTermHiFront, ctermbg = c.vemTermHiGreen, cterm = vemTermBold })
  hi('DiffChange', { fg = c.vemFront, bg = c.vemDiffChangeBack, ctermfg = c.vemTermHiFront, ctermbg = c.vemTermHiBlue, cterm = vemTermBold })
  hi('DiffText', { fg = c.vemWhite, bg = c.vemDiffTextBack, bold = true, ctermfg = c.vemTermBlack, ctermbg = c.vemTermHiYellow, cterm = vemTermReverse })
  hi('DiffDelete', { fg = c.vemCursorDarkDark, bg = c.vemNonTextBack, ctermfg = c.vemTermDiffDelFront, ctermbg = c.vemTermDiffDelBack, cterm = vemTermBold })
  -- Spelling
  hi('SpellBad', {sp = c.vemRed, undercurl = true, ctermfg = c.vemTermBlack, ctermbg = c.vemTermRed, cterm = vemTermUnderline })
  hi('SpellCap', {sp = c.vemGreen, undercurl = true, ctermfg = c.vemTermHiFront, ctermbg = c.vemTermHiBlue, cterm = vemTermUnderline })
  hi('SpellRare', {sp = c.vemGreen, undercurl = true, ctermfg = c.vemTermHiFront, ctermbg = c.vemTermHiOrange, cterm = vemTermUnderline })
  hi('SpellLocal', {sp = c.vemBlue, undercurl = true, ctermfg = c.vemTermHiFront, ctermbg = c.vemTermHiGreen, cterm = vemTermUnderline })
  -- Messages
  hi('Title', { fg = c.vemGreen, ctermfg = c.vemTermYellow, cterm = vemTermBold })
  hi('Question', { fg = c.vemFront, ctermfg = c.vemTermWhite })
  hi('MoreMsg', { fg = c.vemGreen, ctermfg = c.vemTermYellow })
  hi('ModeMsg', { link = 'FoldColumn' })
  hi('ErrorMsg', { fg = c.vemErrorMsg, ctermfg = c.vemTermIntenseRed })
  hi('WarningMsg', { fg = c.vemDimHighlight, ctermfg = c.vemTermRed })
  -- NonText: eol, extends, precedes
  hi('NonText', { fg = c.vemNonTextFront, bg = c.vemNonTextBack, ctermfg = c.vemTermNonTextFront, ctermbg = c.vemTermNonTextBack })
  hi('EndOfBuffer', { link = 'NonText' })
  -- SpecialKey: nbsp, tab, trail
  hi('SpecialKey', { fg = c.vemSpecialKey, ctermfg = c.vemTermGrey })
  -- Text
  -- hi('Directory', { fg = c.vemGreen, ctermfg = c.vemTermYellow })
  hi('Directory', { link = 'Label' })
  hi('Comment', { fg = c.vemComment, italic = italic, ctermfg = c.vemTermComment, cterm = vemTermItalic })
  hi('Constant', { fg = c.vemDimHighlight, ctermfg = c.vemTermRed })
  hi('Character', { link = 'Constant' })
  hi('Number', { link = 'Constant' })
  hi('Boolean', { link = 'Constant' })
  hi('Float', { link = 'Constant' })
  hi('String', { fg = c.vemString, italic = italic, ctermfg = c.vemTermGreen, cterm = vemTermItalic })
  hi('Identifier', { fg = c.vemGreen, ctermfg = c.vemTermYellow })
  hi('Function', { link = 'Identifier' })
  hi('Statement', { fg = c.vemBlue, ctermfg = c.vemTermBlue })
  hi('Conditional', { link = 'Statement' })
  hi('Repeat', { link = 'Statement' })
  hi('Label', { link = 'Statement' })
  hi('Operator', { link = 'Statement' })
  hi('Keyword', { link = 'Statement' })
  hi('Exception', { link = 'Statement' })
  hi('PreProc', { fg = c.vemDimHighlight, ctermfg = c.vemTermRed })
  hi('Include', { link = 'PreProc' })
  hi('Define', { link = 'PreProc' })
  hi('Macro', { link = 'PreProc' })
  hi('PreCondit', { link = 'PreProc' })
  hi('Type', { fg = c.vemGreen, ctermfg = c.vemTermYellow })
  hi('StorageClass', { link = 'Type' })
  hi('Structure', { link = 'Type' })
  hi('Typedef', { link = 'Type' })
  hi('Special', { fg = c.vemSpecial, bold = true, ctermfg = c.vemTermSpecial })
  hi('SpecialChar', { link = 'Special' })
  hi('Tag', { link = 'Special' })
  hi('Delimiter', { link = 'Special' })
  hi('Debug', { link = 'Special' })
  hi('SpecialComment', { link = 'Special' })
  hi('Underlined', { fg = c.vemBlue, underline = true, ctermfg = c.vemTermBlue, cterm = vemTermUnderline })
  hi('Ignore', {})
  hi('Error', { fg = c.vemWhite, bg = c.vemRed, ctermfg = c.vemTermWhite, ctermbg = c.vemTermIntenseRed })
  hi('TODO', { fg = c.vemBack, bg = c.vemSearchBack, bold = true, ctermfg = c.vemTermBlack, ctermbg = c.vemTermYellow })
  -- vem-statusline
  hi('VemStatusLineMode', { fg = c.vemGreen, bg = c.vemSplitDark, bold = true, ctermfg = c.vemTermYellow, ctermbg = c.vemTermBorder, cterm = vemTermBold })
  hi('VemStatusLineModeInsert', { link = 'VemStatusLineMode' })
  hi('VemStatusLineFileModified', { link = 'VemStatusLineMode' })
  hi('VemStatusLineBranch', { fg = c.vemLightGrey, bg = c.vemSplitDark, ctermfg = c.vemTermGrey, ctermbg = c.vemTermBorder })
  hi('VemStatusLineSeparator', { link = 'VemStatusLineBranch' })
  hi('VemStatusLineFileRO', { fg = c.vemDimHighlight, bg = c.vemSplitDark, bold = true, ctermfg = c.vemTermRed, ctermbg = c.vemTermBorder, cterm = vemTermBold })
  hi('VemStatusLinePosition', { fg = c.vemFront, bg = c.vemLightGrey, bold = true, ctermfg = c.vemTermWhite, ctermbg = c.vemTermBorder, cterm = vemTermBold })
  -- vem-tabline
  hi('VemTablineNormal', { fg = c.vemTabLineDarkGrey2, bg = c.vemTabLineLightGrey, ctermfg = c.vemTermBlue, ctermbg = c.vemTermBlack })
  hi('VemTablineLocation', { fg = c.vemSpecialKey, bg = c.vemTabLineLightGrey, ctermfg = c.vemTermBlue, ctermbg = c.vemTermBlack })
  hi('VemTablineNumber', { link = 'VemTablineLocation' })
  hi('VemTablineSelected', { fg = c.vemTabLineDarkGrey2, bg = c.vemWhite, bold = true, ctermfg = c.vemTermBlack, ctermbg = c.vemTermGreen, cterm = vemTermBold })
  hi('VemTablineNumberSelected', { link = 'VemTablineSelected' })
  hi('VemTablineShown', { fg = c.vemTabLineDarkGrey2, bg = c.vemTabLineLightGrey, ctermfg = c.vemTermBlack, ctermbg = c.vemTermRed })
  hi('VemTablineLocationShown', { fg = c.vemSpecialKey, bg = c.vemTabLineLightGrey, ctermfg = c.vemTermBlack, ctermbg = c.vemTermRed })
  hi('VemTablineNumberShown', { link = 'VemTablineLocationShown' })
  hi('VemTablineSeparator', { fg = c.vemTabLineGrey, bg = c.vemTabLineLightGrey, italic = italic, ctermfg = c.vemTermGrey, ctermbg = c.vemTermTabLineBack })
  hi('VemTablinePartialName', { link = 'VemTablineSeparator' })
  hi('VemTablineTabNormal', { fg = c.vemTabLineLightGrey, bg = c.vemTabLineDarkGrey1, ctermfg = c.vemTermWhite, ctermbg = c.vemTermBlack })
  hi('VemTablineTabSelected', { fg = c.vemTabLineDarkGrey2, bg = c.vemWhite, bold = true, ctermfg = c.vemTermBlack, ctermbg = c.vemTermWhite, cterm = vemTermBold })
  -- ctrl-p
  hi('CtrlPStatusline', { fg = c.vemLightGrey, ctermfg = c.vemTermGrey, ctermbg = c.vemTermBack })
  hi('CtrlPBufferNr', { fg = c.vemBlue, ctermfg = c.vemTermBlue, ctermbg = c.vemTermBack })
  hi('CtrlPNoEntries', { fg = c.vemErrorMsg, ctermfg = c.vemTermIntenseRed, ctermbg = c.vemTermBack })
  hi('CtrlPMatch', { fg = c.vemGreen, ctermfg = c.vemTermYellow, ctermbg = c.vemTermBack })
end

return M
