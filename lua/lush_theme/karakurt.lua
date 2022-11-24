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
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn  { bg = black.lighten(5) }, -- Columns set with 'colorcolumn'
    -- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- Character under the cursor
    -- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = black.lighten(5) }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = white, gui = 'bold' }, -- Directory names (and other special names in listings)
    DiffAdd      { bg = black.lighten(5), fg = green_dark }, -- Diff mode: Added line |diff.txt|
    DiffChange   { bg = black.lighten(5), fg = yellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { bg = black.lighten(5), fg = red }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- Cursor in a focused terminal
    -- TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { fg = black, bg = red, gui = 'bold' }, -- Error messages on the command line
    -- VertSplit    { }, -- Column separating vertically split windows
    -- Folded       { }, -- Line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- Column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { fg = gray_dark }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = white }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = yellow, fg = black.lighten(15) }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = white, gui = 'bold' }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { bg = black }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    NonText      { fg = gray_dark }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { bg = black, fg = white }, -- Normal text
    NormalFloat  { Normal }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    Pmenu        { bg = black.lighten(5), fg = white }, -- Popup menu: Normal item.
    PmenuSel     { bg = Pmenu.bg.lighten(5), fg = red, gui = 'bold' }, -- Popup menu: Selected item.
    PmenuSbar    { bg = gray_dark }, -- Popup menu: Scrollbar.
    PmenuThumb   { bg = gray }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { bg = yellow, fg = black }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- Status line of current window
    -- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = black.lighten(15) , fg = white, gui = '' }, -- Tab pages line, not active tab page label
    TabLineFill  { bg = black.lighten(15) }, -- Tab pages line, where there are no labels
    TabLineSel   { bg = black, fg = white, gui = 'bold' }, -- Tab pages line, active tab page label
    Title        { fg = red, gui = 'bold' }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = black.lighten(15) }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- Warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Comment        { fg = gray, gui = 'bold' }, -- Any comment

    -- Constant       { fg = red }, -- (*) Any constant
    -- String         { }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    -- Number         { }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    -- Identifier     { fg = white, gui = 'bold' }, -- (*) Any variable name
    -- Function       { }, --   Function name (also: methods for classes)

    -- Statement      { fg = white, gui = 'bold' }, -- (*) Any statement
    -- Conditional    { }, --   if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --   case, default, etc.
    -- Operator       { }, --   "sizeof", "+", "*", etc.
    -- Keyword        { }, --   any other keyword
    -- Exception      { }, --   try, catch, throw

    -- PreProc        { fg = white, gui = 'bold' }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    -- Type           { fg = pink, gui = 'bold' }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    -- Special        { }, -- (*) Any special symbol
    -- SpecialChar    { }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    -- Delimiter      { }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    -- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    -- Error          { }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

    -- =======================================================================
    -- === Treesitter:
    -- =======================================================================
    -- sym"@text.literal"      { }, -- Normal
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- URI
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo

    sym"@comment" { fg = gray, gui = 'bold' }, -- Comment

    sym'@punctuation.bracket'   { fg = white }, 
    sym'@punctuation.delimiter' { fg = white, gui = 'bold' }, -- Delimiter

    sym"@constant"          { fg = red }, -- Constant
    sym"@constant.builtin"  { fg = yellow }, -- Special
    sym"@constant.macro"    { fg = yellow }, -- Define
    sym"@string"            { sym"@constant" }, -- String
    sym"@string.special"    { sym"@string" }, -- SpecialChar
    sym"@string.escape"     { sym"@constant.builtin" }, -- SpecialChar
    sym"@character"         { sym"@string" }, -- Character
    sym"@character.special" { sym"@constant.builtin" }, -- SpecialChar
    sym"@number"            { sym"@constant", gui = 'bold' }, -- Number
    sym"@float"             { sym"@constant", gui = 'bold' }, -- Float
    sym"@boolean"           { sym"@constant", gui = 'bold' }, -- Boolean

    sym"@function"          { fg = white, gui = 'bold|italic|underline' }, -- Function
    sym"@function.builtin"  { sym"@function" }, -- Special
    sym"@function.macro"    { sym"@function" }, -- Macro
    sym"@parameter"         { fg = white, gui = 'italic' }, -- Identifier
    sym"@method"            { sym"@function" }, -- Function
    sym"@field"             { fg = white }, -- Identifier
    sym"@property"          { fg = white }, -- Identifier
    sym"@constructor"       { sym"@function", gui = 'bold|italic' }, -- Special

    sym"@conditional"       { fg = white, gui = 'bold' }, -- Conditional
    sym"@repeat"            { fg = white, gui = 'bold' }, -- Repeat
    sym"@label"             { fg = white, gui = 'bold' }, -- Label
    sym"@operator"          { fg = yellow, gui = 'bold' }, -- Operator
    sym"@keyword"           { fg = white, gui = 'bold|italic' }, -- Keyword
    sym"@exception"         { fg = white, gui = 'bold' }, -- Exception
    sym"@variable"          { fg = white }, -- Identifier
    -- sym"@namespace"         { }, -- Identifier

    sym"@type"              { fg = white, gui = 'bold' }, -- Type
    sym"@type.definition"   { sym"@type" }, -- Typedef
    sym"@storageclass"      { sym"@type" }, -- StorageClass
    sym"@structure"         { sym"@type" }, -- Structure

    sym"@include"           { fg = white, gui = 'bold|italic' }, -- Include
    sym"@define"            { sym"@include" }, -- Define
    sym"@macro"             { sym"@include" }, -- Macro
    sym"@preproc"           { sym"@include" }, -- PreProc

    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
    
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

