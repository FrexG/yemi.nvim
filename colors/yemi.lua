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
-- Forcing uniform foreground text color for all bracket levels (Removes rainbow brackets)
hl("MatchParen", { fg = colors.fg, bold = true })
hl("@punctuation.bracket", { fg = colors.fg })

-- Hiding indentation lines completely to respect your VS Code design
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
-- 4. Treesitter Standard Syntax Highlighting (Alabaster Minimalist Design)
-------------------------------------------------------------------------------
-- Monochromatic Base
hl("@variable",           { fg = colors.fg })
hl("@variable.builtin",   { fg = colors.fg })
hl("@property",           { fg = colors.fg })
hl("@operator",           { fg = colors.fg })
hl("@punctuation.delimiter", { fg = colors.fg })
hl("@type",               { fg = colors.fg })
hl("@type.builtin",       { fg = colors.fg })
hl("@constructor",        { fg = colors.fg })

-- Monochromatic + Italicized Layout Controls
hl("@keyword",            { fg = colors.fg, italic = true })
hl("@keyword.conditional", { fg = colors.fg, italic = true })
hl("@keyword.repeat",      { fg = colors.fg, italic = true })
hl("@keyword.return",      { fg = colors.fg, italic = true })
hl("@keyword.import",      { fg = colors.fg, italic = true })

-- The Specific Colors Pinned Pops
hl("@comment",            { fg = colors.comment, italic = true })
hl("@string",             { fg = colors.string })
hl("@number",             { fg = colors.number })
hl("@boolean",            { fg = colors.number })
hl("@constant",           { fg = colors.number })
hl("@function",           { fg = colors.func })
hl("@function.call",      { fg = colors.func })
hl("@function.builtin",   { fg = colors.func })
