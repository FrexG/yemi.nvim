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
-- 4. Standard Vim Master Groups (Fixes Python, C, and all other languages)
-------------------------------------------------------------------------------
hl("Comment",        { fg = colors.comment, italic = true })
hl("String",         { fg = colors.string })
hl("Number",         { fg = colors.number })
hl("Boolean",        { fg = colors.number })
hl("Constant",       { fg = colors.number })
hl("Function",       { fg = colors.func })
hl("Keyword",        { fg = colors.fg, italic = true })
hl("Statement",      { fg = colors.fg, italic = true })
hl("Conditional",    { fg = colors.fg, italic = true })
hl("Repeat",         { fg = colors.fg, italic = true })
hl("PreProc",        { fg = colors.number }) -- For macros/imports
hl("Include",        { fg = colors.fg, italic = true })
hl("Type",           { fg = colors.fg })
hl("Identifier",     { fg = colors.fg })
hl("Operator",       { fg = colors.fg })
hl("Delimiter",      { fg = colors.fg })

-------------------------------------------------------------------------------
-- 5. Treesitter Groups (Linked directly to Master Groups)
-------------------------------------------------------------------------------
hl("@variable",           { fg = colors.fg })
hl("@variable.builtin",   { fg = colors.fg })
hl("@property",           { fg = colors.fg })
hl("@operator",           { link = "Operator" })
hl("@punctuation.delimiter", { link = "Delimiter" })
hl("@type",               { link = "Type" })
hl("@type.builtin",       { link = "Type" })
hl("@constructor",        { fg = colors.fg })

hl("@keyword",            { link = "Keyword" })
hl("@keyword.conditional", { link = "Conditional" })
hl("@keyword.repeat",      { link = "Repeat" })
hl("@keyword.return",      { fg = colors.fg, italic = true })
hl("@keyword.import",      { link = "Include" })
hl("@keyword.function",    { link = "Keyword" })

hl("@comment",            { link = "Comment" })
hl("@string",             { link = "String" })
hl("@number",             { link = "Number" })
hl("@boolean",            { link = "Boolean" })
hl("@constant",           { link = "Constant" })
hl("@function",           { link = "Function" })
hl("@function.call",      { link = "Function" })
hl("@function.builtin",   { link = "Function" })
hl("@method",             { link = "Function" })
hl("@method.call",        { link = "Function" })
