-- Clear existing highlights and reset syntax
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "yemi"

local colors = require("yemi.palette").get_colors()

-- Helper function to apply highlight groups quickly
local function hl(group, settings)
  vim.api.nvim_set_hl(0, group, settings)
end

-------------------------------------------------------------------------------
-- 1. Core Editor & UI Elements
-------------------------------------------------------------------------------
hl("Normal",       { fg = colors.fg, bg = colors.bg })
hl("NormalFloat",  { fg = colors.fg, bg = colors.sidebar_bg })
hl("ColorColumn",  { bg = colors.ui_muted })
hl("CursorLine",   { bg = colors.ui_muted })
hl("CursorColumn", { bg = colors.ui_muted })
hl("LineNr",       { fg = colors.ui_muted })
hl("CursorLineNr", { fg = colors.fg, bold = true })
hl("Visual",       { bg = colors.ui_muted })
hl("Pmenu",        { fg = colors.fg, bg = colors.sidebar_bg }) -- Popup autocomplete menu
hl("PmenuSel",     { fg = colors.bg, bg = colors.fg })

-------------------------------------------------------------------------------
-- 2. Brackets, Indent Guides, and Scopes (Cleaned & Hidden)
-------------------------------------------------------------------------------
hl("MatchParen", { fg = colors.fg, bold = true })
hl("@punctuation.bracket", { fg = colors.fg })

hl("IblIndent", { fg = colors.none, bg = colors.none })
hl("IblScope",  { fg = colors.none, bg = colors.none })
hl("IndentBlanklineChar", { fg = colors.none })

-------------------------------------------------------------------------------
-- 3. File Tree Sidebars (Neo-tree / NvimTree / Oil)
-------------------------------------------------------------------------------
hl("NvimTreeNormal",   { fg = colors.fg, bg = colors.sidebar_bg })
hl("NvimTreeNormalNC", { fg = colors.fg, bg = colors.sidebar_bg })
hl("NeoTreeNormal",    { fg = colors.fg, bg = colors.sidebar_bg })
hl("NeoTreeNormalNC",  { fg = colors.fg, bg = colors.sidebar_bg })

-------------------------------------------------------------------------------
-- 4. Standard Vim highlight groups
-------------------------------------------------------------------------------

hl("Comment",     { fg = colors.comment, italic = true })

hl("String",      { fg = colors.string })
hl("Character",   { fg = colors.string })

hl("Number",      { fg = colors.number })
hl("Float",       { fg = colors.number })
hl("Boolean",     { fg = colors.number })

-- Keep generic constants pink, consistent with VS Code's "constant" scope.
hl("Constant",    { fg = colors.number })

hl("Function",    { fg = colors.func })

hl("Keyword",     { fg = colors.number })
hl("Statement",   { fg = colors.number })
hl("Conditional", { fg = colors.number })
hl("Repeat",      { fg = colors.number })
hl("Exception",   { fg = colors.number })

-- C preprocessor directives
hl("PreProc",     { fg = colors.number })
hl("Include",     { fg = colors.number })
hl("Define",      { fg = colors.number })
hl("Macro",       { fg = colors.number })

-- Generic Vim Type stays cyan for user-defined type names.
hl("Type",        { fg = colors.fg})
hl("Typedef",     { fg = colors.number })
hl("StorageClass",{ fg = colors.number })

hl("Identifier",  { fg = colors.fg })
hl("Operator",    { fg = colors.number })
hl("Delimiter",   { fg = colors.fg })
hl("Special",     { fg = colors.number })

-------------------------------------------------------------------------------
-- 5. Tree-sitter captures
-------------------------------------------------------------------------------

-- Comments
hl("@comment",               { link = "Comment" })
hl("@comment.documentation", { link = "Comment" })

-- Strings
hl("@string",                { link = "String" })
hl("@string.documentation",  { link = "String" })
hl("@string.escape",         { fg = colors.string })
hl("@string.special",        { fg = colors.string })
hl("@string.special.path",   { fg = colors.string })
hl("@character",             { link = "Character" })

-- Numbers and constants
hl("@number",                { link = "Number" })
hl("@number.float",          { link = "Float" })
hl("@boolean",               { link = "Boolean" })
hl("@constant",              { fg = colors.func})
hl("@constant.builtin",      { fg = colors.func })
hl("@constant.macro",        { fg = colors.func })

-- Variables and struct fields
hl("@variable",              { fg = colors.fg })
hl("@variable.builtin",      { fg = colors.fg })
hl("@variable.parameter",    { fg = colors.fg })
hl("@variable.member",       { fg = colors.fg })
hl("@property",              { fg = colors.fg })

-- User-defined types: Arena
hl("@type",                  { link = "Type"})
hl("@type.definition",       { link = "Type"})

-- Built-in and library types: int, void, size_t
hl("@type.builtin",          { link = "Type"})

-- Keywords: typedef, struct, return, if, for...
hl("@keyword",               { link = "Keyword" })
hl("@keyword.return",        { link = "Keyword" })
hl("@keyword.function",      { link = "Keyword" })
hl("@keyword.operator",      { link = "Keyword" })
hl("@keyword.conditional",   { link = "Conditional" })
hl("@keyword.repeat",        { link = "Repeat" })
hl("@keyword.exception",     { link = "Exception" })
hl("@keyword.modifier",      { link = "Keyword" })
hl("@keyword.type",          { link = "Keyword" })

-- Preprocessor: #include, #define, #if
hl("@keyword.directive",        { fg = colors.number })
hl("@keyword.directive.define", { fg = colors.number })

-- Header names in #include <stdio.h>
hl("@module",                 { fg = colors.string })
hl("@module.builtin",         { fg = colors.string })

-- Functions
hl("@function",               { link = "Function" })
hl("@function.call",          { link = "Function" })
hl("@function.builtin",       { link = "Function" })
hl("@function.method",        { link = "Function" })
hl("@function.method.call",   { link = "Function" })
hl("@constructor",            { link = "Function" })

-- Operators and punctuation
hl("@operator",               { link = "Operator" })
hl("@punctuation.bracket",    { link = "Delimiter" })
hl("@punctuation.delimiter",  { link = "Delimiter" })
hl("@punctuation.special",    { link = "Delimiter" })
