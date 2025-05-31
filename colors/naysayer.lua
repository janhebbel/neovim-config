vim.cmd("highlight clear")
vim.o.termguicolors = true

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "naysayer"

normal_color     = "#cfb896"
background_color = "#00181c" -- #062626
function_color   = normal_color
constant_color   = "#93f8e0"
string_color     = "#3cd2b2"
comment_color    = "#4fd53a"
type_color       = "#8fee8f"
keyword_color    = "#ffffff"

-- Base UI colors
vim.api.nvim_set_hl(0, "Normal",       { fg = normal_color, bg = background_color }) -- #cdaa7d
vim.api.nvim_set_hl(0, "Visual",       { bg = "#00008b" })
vim.api.nvim_set_hl(0, "Search",       { bg = "#ee799f", fg = "#121a1c" })
vim.api.nvim_set_hl(0, "IncSearch",    { bg = "#54bf94", fg = "#121a1c" })
vim.api.nvim_set_hl(0, "CurSearch",    { bg = "#ee799f", fg = "#121a1c" })
vim.api.nvim_set_hl(0, "VertSplit",    { bg = "#181818" })
vim.api.nvim_set_hl(0, "EndOfBuffer",  { bg = "#081216" }) -- #041f1f
vim.api.nvim_set_hl(0, "StatusLine",   { fg = background_color, bg = normal_color })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#404040", bg = "#cccccc" })

-- Syntax highlighting
vim.api.nvim_set_hl(0, "@comment",          { fg = comment_color })
vim.api.nvim_set_hl(0, "@function",         { fg = function_color })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = function_color })
vim.api.nvim_set_hl(0, "@constant",         { fg = constant_color })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = constant_color })
vim.api.nvim_set_hl(0, "@number",           { fg = constant_color })
vim.api.nvim_set_hl(0, "@boolean",          { fg = constant_color })
vim.api.nvim_set_hl(0, "@string",           { fg = string_color })
vim.api.nvim_set_hl(0, "@string.escape",    { fg = string_color })
vim.api.nvim_set_hl(0, "@character",        { fg = string_color })
vim.api.nvim_set_hl(0, "@operator",         { fg = normal_color })
vim.api.nvim_set_hl(0, "@variable",         { fg = normal_color })
vim.api.nvim_set_hl(0, "@label",            { fg = keyword_color })
vim.api.nvim_set_hl(0, "@keyword",          { fg = keyword_color })
vim.api.nvim_set_hl(0, "@type",             { fg = type_color })
vim.api.nvim_set_hl(0, "@type.builtin",     { fg = type_color })
vim.api.nvim_set_hl(0, "@punctuation",      { fg = normal_color })
vim.api.nvim_set_hl(0, "@constructor",      { fg = normal_color })
vim.api.nvim_set_hl(0, "@property",         { fg = normal_color })

