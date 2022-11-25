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
    -- =======================================================================
    -- === Fg colors base:
    -- =======================================================================
    Black     { fg = black },
    BlackB    { Black, gui = 'bold' },
    White     { fg = white },
    WhiteB    { White, gui = 'bold' },
    WhiteI    { White, gui = 'italic' },
    WhiteBI   { White, gui = 'bold|italic' },
    WhiteBIU  { White, gui = 'bold|italic|underline' },
    Gray      { fg = gray },
    GrayB     { Gray, gui = 'bold' },
    GrayDark  { fg = gray_dark },
    Red       { fg = red },
    RedB      { Red, gui = 'bold' },
    Pink      { fg = pink },
    PinkB     { Pink, gui = 'bold' },
    Yellow    { fg = yellow },
    YellowB   { Yellow, gui = 'bold' },
    Green     { fg = green },
    GreenI    { Green, gui = 'italic' },
    GreenDark { fg = green_dark },


    -- =======================================================================
    -- === VIM's hl groups:
    -- =======================================================================
    ColorColumn  { bg = black.lighten(5) },
    -- Conceal      { },
    -- Cursor       { },
    -- lCursor      { },
    -- CursorIM     { },
    -- CursorColumn { },
    CursorLine   { bg = black.lighten(5) },
    Directory    { WhiteB },
    DiffAdd      { bg = black.lighten(5), GreenDark },
    DiffChange   { bg = black.lighten(5), Yellow },
    DiffDelete   { bg = black.lighten(5), Red },
    -- DiffText     { },
    -- EndOfBuffer  { },
    -- TermCursor   { },
    -- TermCursorNC { },
    ErrorMsg     { bg = red, BlackB },
    -- VertSplit    { },
    -- Folded       { },
    -- FoldColumn   { },
    -- SignColumn   { },
    -- IncSearch    { },
    -- Substitute   { },
    LineNr       { GrayDark },
    CursorLineNr { White },
    MatchParen   { bg = yellow, fg = black.lighten(15) },
    ModeMsg      { WhiteB },
    MsgArea      { bg = black },
    -- MsgSeparator { },
    -- MoreMsg      { },
    NonText      { GrayDark },
    Normal       { bg = black, White },
    NormalFloat  { bg = Normal.bg.lighten(5), White },
    -- NormalNC     { },
    Pmenu        { bg = black.lighten(5), White },
    PmenuSel     { bg = Pmenu.bg.lighten(5), RedB },
    PmenuSbar    { bg = gray_dark },
    PmenuThumb   { bg = gray },
    -- Question     { },
    -- QuickFixLine { },
    Search       { bg = yellow, Black },
    -- SpecialKey   { },
    -- SpellBad     { },
    -- SpellCap     { },
    -- SpellLocal   { },
    -- SpellRare    { },
    -- StatusLine   { },
    -- StatusLineNC { },
    TabLine      { bg = black.lighten(15), White },
    TabLineFill  { bg = black.lighten(15) },
    TabLineSel   { bg = black, WhiteB },
    Title        { RedB },
    Visual       { bg = black.lighten(15) },
    -- VisualNOS    { },
    -- WarningMsg   { },
    -- Whitespace   { },
    -- Winseparator { },
    -- WildMenu     { },

    -- -----------------------------------------------------------------------
    -- --- Programming groups:
    -- -----------------------------------------------------------------------
    -- Comment        { GrayB },

    -- Constant       { Red },
    -- String         { },
    -- Character      { },
    -- Number         { },
    -- Boolean        { },
    -- Float          { },

    -- Identifier     { WhiteB },
    -- Function       { },

    -- Statement      { WhiteB },
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { WhiteB },
    -- Include        { },
    -- Define         { },
    -- Macro          { },
    -- PreCondit      { },

    -- Type           { PinkB },
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
    -- sym"@text"                  {},
    sym"@text.strong"           { WhiteB },
    sym"@text.emphasis"         { WhiteI },
    -- sym"@text.underline"        {},
    -- sym"@text.strike"           {},
    sym"@text.title"            { RedB },
    -- sym"@text.literal"          { Green },
    sym"@text.uri"              { GreenI },
    -- sym"@text.math"             {},
    -- sym"@text.environment"      {},
    -- sym"@text.environment.name" {},
    sym"@text.reference"        { WhiteI },

    -- sym"@text.todo"             {},
    -- sym"@text.note"             {},
    -- sym"@text.warning"          {},
    -- sym"@text.danger"           {},

    -- sym"@text.diff.add"         {},
    -- sym"@text.diff.delete"      {},


    sym"@comment" { GrayB },

    sym'@punctuation.bracket'   { White }, 
    sym'@punctuation.delimiter' { WhiteB },

    sym"@constant"          { Red },
    sym"@constant.builtin"  { Yellow },
    sym"@constant.macro"    { Yellow },
    sym"@string"            { Red },
    sym"@string.special"    { sym"@string" },
    sym"@string.escape"     { Yellow },
    sym"@character"         { sym"@string" },
    sym"@character.special" { Yellow },
    sym"@number"            { RedB },
    sym"@float"             { RedB },
    sym"@boolean"           { RedB },

    sym"@function"          { WhiteBIU },
    sym"@function.builtin"  { sym"@function" },
    sym"@function.macro"    { sym"@function" },
    sym"@parameter"         { WhiteI },
    sym"@method"            { sym"@function" },
    sym"@field"             { White },
    sym"@property"          { White },
    sym"@constructor"       { WhiteBI },

    sym"@conditional"       { WhiteB },
    sym"@repeat"            { WhiteB },
    sym"@label"             { WhiteB },
    sym"@operator"          { YellowB },
    sym"@keyword"           { WhiteBI },
    sym"@exception"         { WhiteB },
    sym"@variable"          { White },
    -- sym"@namespace"         { },

    sym"@type"              { WhiteB },
    sym"@type.definition"   { sym"@type" },
    sym"@storageclass"      { sym"@type" },
    sym"@structure"         { sym"@type" },

    sym"@include"           { WhiteBI },
    sym"@define"            { sym"@include" },
    sym"@macro"             { sym"@include" },
    sym"@preproc"           { sym"@include" },

    -- sym"@debug"             { },
    -- sym"@tag"               { },
    
    -- -----------------------------------------------------------------------
    -- --- Haskell:
    -- -----------------------------------------------------------------------
    sym"@function.haskell"         { WhiteBIU },
    sym"@function.builtin.haskell" { WhiteBIU },
    sym"@function.macro.haskell"   { WhiteBIU },
    sym"@function.call.haskell"    { WhiteBI },

    sym"@keyword.haskell"          { WhiteBI },

    sym"@include.haskell"          { WhiteBI },
  }
end)

return theme

