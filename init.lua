vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.showmode = false

vim.o.number = false
vim.o.relativenumber = false

vim.o.mouse = 'a'

vim.opt.termguicolors = true
-- vim.o.background = "dark"

vim.opt.termguicolors = true
vim.opt.guicursor = {
  "n-v-c:block-Cursor",
  "i-ci-ve:ver25-Cursor",
  "r-cr:hor20-Cursor",
  "o:hor50-Cursor"
}

vim.o.guifont = 'Liberation Mono:h12' -- Liberation Mono:h14
vim.g.neovide_scroll_animation_length = 0.1
vim.g.neovide_cursor_animation_length = 0

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = vim.o.shiftwidth
vim.o.tabstop = vim.o.shiftwidth
vim.o.cindent = false
vim.o.cinoptions = "" -- ":0,(s,m1", ":0,(0,m1"

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

vim.keymap.set('n', '0', 'g0')
vim.keymap.set('n', '$', 'g$')
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set({'n', 'v'}, '<leader>d', '"_d')
vim.keymap.set('n', '<leader>i', '=i{')
vim.keymap.set('n', '<C-k>', 'd$')
vim.keymap.set('n', '<A-k>', 'ddkP')
vim.keymap.set('n', '<A-j>', 'ddp')
vim.keymap.set('n', '<C-h>', '^')
vim.keymap.set('n', '<C-l>', '$')
vim.keymap.set('n', '<leader>k', '<cmd>!build<CR>')
vim.keymap.set('n', '<leader>s', '<cmd>w<CR>')

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    }
}

vim.cmd("let c_no_curly_error = 1")

vim.cmd("set background=light")
vim.cmd("colorscheme monocolor")

