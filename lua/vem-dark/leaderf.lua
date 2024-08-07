local M = {}

local function StlPalette()
  return {
    stlName = {
      guifg = '#808080',
      guibg = '#303030',
    },
    stlCategory = {
      gui = 'bold',
      guifg = '#373737',
      guibg = '#cae682',
    },
    stlNameOnlyMode = {
      gui = 'bold',
      guifg = '#373737',
      guibg = '#cae682',
    },
    stlFullPathMode = {
      gui = 'bold',
      guifg = '#373737',
      guibg = '#cae682',
    },
    stlFuzzyMode = {
      gui = 'bold',
      guifg = '#373737',
      guibg = '#cae682',
    },
    stlRegexMode = {
      gui = 'bold',
      guifg = '#373737',
      guibg = '#cae682',
    },
    stlCwd = {
      guifg = '#404040',
      guibg = '#404040',
    },
    stlBlank = {
      guifg = '#404040',
      guibg = '#404040',
    },
    stlLineInfo = {
      guifg = '#373737',
      guibg = '#8ac6f2',
    },
    stlTotal = {
      guifg = '#373737',
      guibg = '#8ac6f2',
    }
  }
end

M.apply = function()
  local hi = require('vem-dark.colors').hi

  vim.g.Lf_StlPalette = StlPalette()

  hi('Lf_hl_selection', { link = 'Search' })
  hi('Lf_hl_cursorline', { link = 'CursorLine' })
  hi('Lf_hl_popup_inputText', { fg = '#e6e3d8',  bg = '#242424' })
  hi('Lf_hl_popup_prompt', { link = 'Label' })
  hi('Lf_hl_popup_lineInfo', { fg = '#101010', bg = '#d7ff87' })
  hi('Lf_hl_popup_total', { fg = '#101010', bg = '#cae682' })
  hi('Lf_hl_popup_normalMode', { fg = '#101010', bg = '#cae682', bold = true })
  hi('Lf_hl_popup_inputMode', { fg = '#101010', bg = '#cae682', bold = true })
  hi('Lf_hl_popup_category', { fg = '#101010', bg = '#8ac6f2' })
  hi('Lf_hl_popup_nameOnlyMode', { fg = '#d6d3c8', bg = '#303030' })
  hi('Lf_hl_popup_fullPathMode', { fg = '#d6d3c8', bg = '#303030' })
  hi('Lf_hl_popup_regexMode', { fg = '#d6d3c8', bg = '#303030' })
  hi('Lf_hl_popup_fuzzyMode', { fg = '#d6d3c8', bg = '#303030' })
  hi('Lf_hl_popup_cwd', { fg = '#404040', bg = '#404040' })
end

return M
