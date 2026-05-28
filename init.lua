vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.showmode = false

vim.o.number = false
vim.o.relativenumber = false

vim.o.mouse = 'a'

vim.opt.termguicolors = true
vim.opt.guicursor = {
    "n-v-c:block-Cursor",
    "i-ci-ve:ver20-iCursor",
    "r-cr:hor20-Cursor",
    "o:hor50-Cursor"
}

vim.o.guifont = "Droid Sans Mono:h12"
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_animation_length = 0

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = vim.o.shiftwidth
vim.o.tabstop = vim.o.shiftwidth
vim.o.cindent = false
vim.o.cinoptions = ":0,E-s"

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = false
vim.opt.breakindentopt = { "shift:" .. vim.o.shiftwidth }
vim.opt.showbreak = "" -- "↪ "

vim.o.textwidth=0
vim.o.colorcolumn=""--"81"

vim.o.cursorline = false

vim.o.undofile = true

vim.o.scrolloff = 10
vim.o.clipboard = 'unnamedplus'

vim.filetype.add({
    extension = {
        hlsl = "hlsl",
    },
})

vim.opt.makeprg = "cmd /c .\\build.bat"

vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope-fzf-native.nvim" })
vim.pack.add({ "https://github.com/bfrg/vim-c-cpp-modern" })
vim.pack.add({ "https://github.com/rluba/jai.vim" })

local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<C-t>"] = actions.select_tab,
                ["<C-s>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
            },
            n = {
                ["<C-t>"] = actions.select_tab,
                ["<C-s>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
            },
        },
    },
})

require("telescope").load_extension("fzf")

-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "*",
--     callback = function()
--         pcall(vim.treesitter.start)
--     end,
-- })

-- vim.lsp.enable("clangd")
-- vim.lsp.config("clangd", {
--     cmd = {
--         "clangd",
--         "--background-index",
--     },
--     handlers = {
--         ["textDocument/publishDiagnostics"] = function() end,
--     },
-- })

-- vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help)
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition)

-- require('vague').setup({
--     transparent = false, -- If true, background is not set
--     bold = false, -- Disable bold globally
--     italic = false, -- Disable italic globally
-- })

-- require("gruvbox").setup({
--     bold = false,
--     italic = {
--         strings = false,
--         emphasis = false,
--         comments = false,
--         operators = false,
--         folds = false,
--     },
--     -- italic = false,
-- })

vim.keymap.set('n', '0', 'g0')
vim.keymap.set('n', '$', 'g$')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({'n', 'v'}, '<leader>d', '"_d')
-- vim.keymap.set('n', '<C-i>', '=i{')
vim.keymap.set('n', '<C-k>', 'd$')
vim.keymap.set('n', '<C-h>', '^')
vim.keymap.set('n', '<C-l>', '$')
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('n', '<C-,>', 'gT')
vim.keymap.set('n', '<C-.>', 'gt')

vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-l>', '<C-w>l')
vim.keymap.set('n', '<M-v>', '<C-w>v')
vim.keymap.set('n', '<M-s>', '<C-w>s')
vim.keymap.set('n', '<M-c>', '<C-w>c')
vim.keymap.set('n', '<M-o>', '<C-w>o')

vim.keymap.set('n', '<M-g>', builtin.live_grep)
vim.keymap.set('n', '<M-f>', builtin.find_files)

vim.keymap.set('n', '<leader>fd', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fo', builtin.buffers)
vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find)

vim.keymap.set('n', '<C-S-b>', ':make!<CR>')
vim.keymap.set('n', '<leader>co', ':copen<CR>')
vim.keymap.set('n', '<leader>cc', ':cclose<CR>')
vim.keymap.set('n', '<C-p>', ':cprev<CR>')
vim.keymap.set('n', '<C-n>', ':cnext<CR>')

vim.api.nvim_create_user_command("Fd", builtin.find_files, {})
vim.api.nvim_create_user_command("Fg", builtin.live_grep, {})
vim.api.nvim_create_user_command("Fo", builtin.buffers, {})
vim.api.nvim_create_user_command("Fs", builtin.current_buffer_fuzzy_find, {})

vim.cmd("let c_no_curly_error = 1")

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "slate",
    callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg = "#b0b0b0" })
        vim.api.nvim_set_hl(0, "Cursor", { bg = "#00ff00" })
        vim.api.nvim_set_hl(0, "InsertCursor", { bg = "#ff0000" })
        vim.api.nvim_set_hl(0, "MatchParen", { bg = "#406045" })
        vim.api.nvim_set_hl(0, "CursorLine", { bg = "#202f60" })
        vim.api.nvim_set_hl(0, "Structure", { fg = "#7ded45" })
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "jai",
    callback = function()
        vim.b.jai_indent_options = {
            case_labels = 0,
        }
    end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "morning",
    callback = function()
        vim.api.nvim_set_hl(0, "Constant", { fg = "#ff00ff", bg = "#e4e4e4" })
        vim.api.nvim_set_hl(0, "Visual", { bg = "#c0c0c0" })
    end,
})

vim.cmd("colorscheme custom")

