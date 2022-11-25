local lush = require 'lush'
local hsl = lush.hsl

local black      = hsl '#080808' -- light: #f7f7f7
local white      = hsl '#DADADA'
local gray       = hsl '#707070'
local gray_dark  = hsl '#444444'
local yellow     = hsl '#FFAF00'
-- local pink       = hsl '#FF005F'
local pink       = hsl '#FFA0A0'
local red        = hsl '#FB4934'
local green      = hsl '#60FF60'
local green_dark = hsl '#7FE141' -- mix of #60FF60 and #b8bb26 (gruvbox's green)

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    ColorColumn  { bg = black.lighten(5) },
    -- Conceal      { },
    -- Cursor       { },
    -- lCursor      { },
    -- CursorIM     { },
    -- CursorColumn { },
    CursorLine   { bg = black.lighten(5) },
    Directory    { fg = white, gui = 'bold' },
    DiffAdd      { bg = black.lighten(5), fg = green_dark },
    DiffChange   { bg = black.lighten(5), fg = yellow },
    DiffDelete   { bg = black.lighten(5), fg = red },
    -- DiffText     { },
    -- EndOfBuffer  { },
    -- TermCursor   { },
    -- TermCursorNC { },
    ErrorMsg     { fg = black, bg = red, gui = 'bold' },
    -- VertSplit    { },
    -- Folded       { },
    -- FoldColumn   { },
    -- SignColumn   { },
    -- IncSearch    { },
    -- Substitute   { },
    LineNr       { fg = gray_dark },
    CursorLineNr { fg = white },
    MatchParen   { bg = yellow, fg = black.lighten(15) },
    ModeMsg      { fg = white, gui = 'bold' },
    MsgArea      { bg = black },
    -- MsgSeparator { },
    -- MoreMsg      { },
    NonText      { fg = gray_dark },
    Normal       { bg = black, fg = white },
    NormalFloat  { Normal },
    -- NormalNC     { },
    Pmenu        { bg = black.lighten(5), fg = white },
    PmenuSel     { bg = Pmenu.bg.lighten(5), fg = red, gui = 'bold' },
    PmenuSbar    { bg = gray_dark },
    PmenuThumb   { bg = gray },
    -- Question     { },
    -- QuickFixLine { },
    Search       { bg = yellow, fg = black },
    -- SpecialKey   { },
    -- SpellBad     { },
    -- SpellCap     { },
    -- SpellLocal   { },
    -- SpellRare    { },
    -- StatusLine   { },
    -- StatusLineNC { },
    TabLine      { bg = black.lighten(15) , fg = white, gui = '' },
    TabLineFill  { bg = black.lighten(15) },
    TabLineSel   { bg = black, fg = white, gui = 'bold' },
    Title        { fg = red, gui = 'bold' },
    Visual       { bg = black.lighten(15) },
    -- VisualNOS    { },
    -- WarningMsg   { },
    -- Whitespace   { },
    -- Winseparator { },
    -- WildMenu     { },

    -- -----------------------------------------------------------------------
    -- --- Programming languages:
    -- -----------------------------------------------------------------------
    -- Comment        { fg = gray, gui = 'bold' },

    -- Constant       { fg = red },
    -- String         { },
    -- Character      { },
    -- Number         { },
    -- Boolean        { },
    -- Float          { },

    -- Identifier     { fg = white, gui = 'bold' },
    -- Function       { },

    -- Statement      { fg = white, gui = 'bold' },
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { fg = white, gui = 'bold' },
    -- Include        { },
    -- Define         { },
    -- Macro          { },
    -- PreCondit      { },

    -- Type           { fg = pink, gui = 'bold' },
    -- StorageClass   { },
    -- Structure      { },
    -- Typedef        { },

    -- Special        { },
    -- SpecialChar    { },
    -- Tag            { },
    -- Delimiter      { },
    -- SpecialComment { },
    -- Debug          { },

    -- Underlined     { gui = "underline" },
    -- Ignore         { },
    -- Error          { },
    -- Todo           { },

    -- -----------------------------------------------------------------------
    -- --- LSP:
    -- -----------------------------------------------------------------------
    -- LspReferenceText            { } ,
    -- LspReferenceRead            { } ,
    -- LspReferenceWrite           { } ,
    -- LspCodeLens                 { } ,
    -- LspCodeLensSeparator        { } ,
    -- LspSignatureActiveParameter { } ,

    -- -----------------------------------------------------------------------
    -- --- Diagnostics:
    -- -----------------------------------------------------------------------
    -- DiagnosticError            { },
    -- DiagnosticWarn             { },
    -- DiagnosticInfo             { },
    -- DiagnosticHint             { },
    -- DiagnosticVirtualTextError { },
    -- DiagnosticVirtualTextWarn  { },
    -- DiagnosticVirtualTextInfo  { },
    -- DiagnosticVirtualTextHint  { },
    -- DiagnosticUnderlineError   { },
    -- DiagnosticUnderlineWarn    { },
    -- DiagnosticUnderlineInfo    { },
    -- DiagnosticUnderlineHint    { },
    -- DiagnosticFloatingError    { },
    -- DiagnosticFloatingWarn     { },
    -- DiagnosticFloatingInfo     { },
    -- DiagnosticFloatingHint     { },
    -- DiagnosticSignError        { },
    -- DiagnosticSignWarn         { },
    -- DiagnosticSignInfo         { },
    -- DiagnosticSignHint         { },

    -- =======================================================================
    -- === Treesitter:
    -- =======================================================================
    -- sym"@text.literal"      { },
    -- sym"@text.reference"    { },
    -- sym"@text.title"        { },
    -- sym"@text.uri"          { },
    -- sym"@text.underline"    { },
    -- sym"@text.todo"         { },

    sym"@comment" { fg = gray, gui = 'bold' },

    sym'@punctuation.bracket'   { fg = white }, 
    sym'@punctuation.delimiter' { fg = white, gui = 'bold' },

    sym"@constant"          { fg = red },
    sym"@constant.builtin"  { fg = yellow },
    sym"@constant.macro"    { fg = yellow },
    sym"@string"            { sym"@constant" },
    sym"@string.special"    { sym"@string" },
    sym"@string.escape"     { sym"@constant.builtin" },
    sym"@character"         { sym"@string" },
    sym"@character.special" { sym"@constant.builtin" },
    sym"@number"            { sym"@constant", gui = 'bold' },
    sym"@float"             { sym"@constant", gui = 'bold' },
    sym"@boolean"           { sym"@constant", gui = 'bold' },

    sym"@function"          { fg = white, gui = 'bold|italic|underline' },
    sym"@function.builtin"  { sym"@function" },
    sym"@function.macro"    { sym"@function" },
    sym"@parameter"         { fg = white, gui = 'italic' },
    sym"@method"            { sym"@function" },
    sym"@field"             { fg = white },
    sym"@property"          { fg = white },
    sym"@constructor"       { sym"@function", gui = 'bold|italic' },

    sym"@conditional"       { fg = white, gui = 'bold' },
    sym"@repeat"            { fg = white, gui = 'bold' },
    sym"@label"             { fg = white, gui = 'bold' },
    sym"@operator"          { fg = yellow, gui = 'bold' },
    sym"@keyword"           { fg = white, gui = 'bold|italic' },
    sym"@exception"         { fg = white, gui = 'bold' },
    sym"@variable"          { fg = white },
    -- sym"@namespace"         { },

    sym"@type"              { fg = white, gui = 'bold' },
    sym"@type.definition"   { sym"@type" },
    sym"@storageclass"      { sym"@type" },
    sym"@structure"         { sym"@type" },

    sym"@include"           { fg = white, gui = 'bold|italic' },
    sym"@define"            { sym"@include" },
    sym"@macro"             { sym"@include" },
    sym"@preproc"           { sym"@include" },

    -- sym"@debug"             { },
    -- sym"@tag"               { },
    
    -- -----------------------------------------------------------------------
    -- --- Haskell:
    -- -----------------------------------------------------------------------
    sym"@function.haskell"         { fg = white, gui = 'bold|italic|underline' },
    sym"@function.builtin.haskell" { sym"@function.haskell" },
    sym"@function.macro.haskell"   { sym"@function.haskell" },
    sym"@function.call.haskell"    { sym"@function.haskell", gui = 'bold|italic' },

    sym"@keyword.haskell"          { sym"@function.haskell", gui = 'bold|italic' },

    sym"@include.haskell"          { sym"@keyword.haskell" },
  }
end)

return theme

