local lush = require 'lush'
local hsl = lush.hsl

local colors = {
  black     = hsl '#080808',
  white     = hsl '#DADADA',
  gray      = hsl '#707070',
  dark_gray = hsl '#444444',
  yellow    = hsl '#FFAF00',
  pink      = hsl '#FF005F',
  red       = hsl '#FB4934',
}

return lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    Normal { bg = colors.black, fg = colors.white },
    Comment { fg = colors.gray, gui = 'bold' },
    CursorLine { bg = Normal.bg.lighten(5) },
    ColorColumn { bg = Normal.bg.lighten(5) },
    Visual { bg = CursorLine.bg, fg = Normal.fg.rotate(180) },
    LineNr { fg = colors.dark_gray },
    CursorLineNr { fg = colors.white },
    ErrorMsg { bg = colors.red, fg = colors.black, gui = 'bold' },

    Identifier { fg = Normal.fg, gui = 'bold' },
    Function { fg = Normal.fg, gui = 'bold' },
    Constant { fg = Normal.fg, gui = 'bold' },
    -- Type { fg = Normal.fg },
    StorageClass { fg = Normal.fg, gui = 'bold' },
    Structure { fg = Normal.fg, gui = 'bold' },
    -- Typedef {},
    String { fg = colors.red },
    -- Character {},
    Number { fg = colors.red },
    Float { fg = colors.red },
    Boolean { fg = colors.red },
    Operator { fg = Normal.fg, gui = 'bold' },
    Keyword { fg = Normal.fg },
    Statement { fg = Normal.fg, gui = 'bold' },
    Repeat { Statement },
    Label { Statement },
    Exception { Statement },

    -- TSPunctBracket { fg = Normal.fg, gui = 'italic' },
    -- TSError              { }, -- For syntax/parser errors.
    -- TSPunctDelimiter     { }, -- For delimiters ie: `.`
    -- TSPunctBracket       { }, -- For brackets and parens.
    -- TSPunctSpecial       { }, -- For special punctutation that does not fall in the catagories before.
    -- TSConstant           { }, -- For constants
    -- TSConstBuiltin       { }, -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { }, -- For constants that are defined by macros: `NULL` in C.
    TSString             { String }, -- For strings.
    -- TSStringRegex        { }, -- For regexes.
    -- TSStringEscape       { }, -- For escape characters within a string.
    -- TSCharacter          { }, -- For characters.
    TSNumber             { Number }, -- For integers.
    TSBoolean            { Boolean }, -- For booleans.
    TSFloat              { Float }, -- For floats.
    TSFunction           { Function }, -- For function (calls and definitions).
    -- TSFuncBuiltin        { }, -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSParameter          { fg = Normal.fg, gui = 'italic' }, -- For parameters of a function.
    -- TSParameterReference { }, -- For references to parameters of a function.
    -- TSMethod             { }, -- For method calls and definitions.
    -- TSField              { }, -- For fields.
    -- TSProperty           { }, -- Same as `TSField`.
    -- TSConstructor        { }, -- For constructor calls and definitions: `                                                                       { }` in Lua, and Java constructors.
    -- TSConditional        { }, -- For keywords related to conditionnals.
    TSRepeat             { Repeat }, -- For keywords related to loops.
    TSLabel              { Label }, -- For labels: `label:` in C and `:label:` in Lua.
    TSOperator           { Operator }, -- For any operator: `+`, but also `->` and `*` in C.
    TSKeyword            { Keyword }, -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { }, -- For keywords used to define a fuction.
    TSException          { Exception }, -- For exception related keywords.
    TSType               { fg = colors.pink, gui = 'bold' }, -- For types.
    -- TSTypeBuiltin        { }, -- For builtin types (you guessed it, right ?).
    -- TSNamespace          { }, -- For identifiers referring to modules and namespaces.
    TSInclude            { fg = Normal.fg, gui = 'bold' }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSAnnotation         { }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSText               { }, -- For strings considered text in a markup language.
    -- TSStrong             { }, -- For text to be represented with strong.
    -- TSEmphasis           { }, -- For text to be represented with emphasis.
    -- TSUnderline          { }, -- For text to be represented with an underline.
    -- TSTitle              { }, -- Text that is part of a title.
    -- TSLiteral            { }, -- Literal text.
    -- TSURI                { }, -- Any URI like a link or email.
    -- TSVariable           { }, -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    -- sym"@type"              { fg = colors.pink }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
  }
end)
