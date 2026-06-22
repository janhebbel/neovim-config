vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.showmode = true

vim.o.number = false
vim.o.relativenumber = false

vim.o.mouse = 'a'

vim.opt.termguicolors = true
vim.opt.guicursor = {
    "n-v-c:block-Cursor",
    "i-ci-ve:ver20-iCursor",
    -- "i-ci-ve:block-iCursor",
    "r-cr:hor20-Cursor",
    "o:hor50-Cursor"
}

if vim.g.neovide == true then
    vim.o.guifont = "JetBrains Mono NL:h14"
    vim.g.neovide_scroll_animation_length = 0
    vim.g.neovide_cursor_animation_length = 0
    vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
    -- vim.api.nvim_set_keymap({"n", "v"}, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", {})
    -- vim.api.nvim_set_keymap({"n", "v"}, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", {})
    -- vim.api.nvim_set_keymap({"n", "v"}, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", {})
    -- vim.keymap.set({ "n", "v" }, "<C-ScrollWheelUp>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    -- vim.keymap.set({ "n", "v" }, "<C-ScrollWheelDown>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
end

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

vim.o.scrolloff=0
vim.o.scrolljump=-50

vim.o.clipboard = 'unnamedplus'

vim.filetype.add({
    extension = {
        hlsl = "hlsl",
    },
})

vim.opt.makeprg = "cmd /c .\\build.bat"
vim.opt.grepprg = "rg --vimgrep --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"

vim.pack.add({ "https://github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope.nvim" })
vim.pack.add({ "https://github.com/nvim-telescope/telescope-fzf-native.nvim" })
vim.pack.add({ "https://github.com/bfrg/vim-c-cpp-modern" })
vim.pack.add({ "https://github.com/rluba/jai.vim" })

local ok, telescope = pcall(require, "telescope")

if ok then

    local builtin = require("telescope.builtin")
    local actions = require("telescope.actions")

    telescope.setup({
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

    vim.keymap.set('n', '<M-g>', builtin.live_grep)
    vim.keymap.set('n', '<M-f>', builtin.find_files)

    vim.keymap.set('n', '<leader>fd', builtin.find_files)
    vim.keymap.set('n', '<leader>fg', builtin.live_grep)
    vim.keymap.set('n', '<leader>fo', builtin.buffers)
    vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find)

    vim.api.nvim_create_user_command("Fd", builtin.find_files, {})
    vim.api.nvim_create_user_command("Fg", builtin.live_grep, {})
    vim.api.nvim_create_user_command("Fo", builtin.buffers, {})
    vim.api.nvim_create_user_command("Fs", builtin.current_buffer_fuzzy_find, {})

    telescope.load_extension("fzf")

end

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

vim.keymap.set('n', '<C-S-b>', ':make!<CR>')
vim.keymap.set('n', '<leader>co', ':copen<CR>')
vim.keymap.set('n', '<leader>cc', ':cclose<CR>')
vim.keymap.set('n', '<C-p>', ':cprev<CR>')
vim.keymap.set('n', '<C-n>', ':cnext<CR>')

vim.api.nvim_create_user_command("Build", ":make!<CR>", {})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "jai",
    callback = function()
        vim.b.jai_indent_options = {
            case_labels = 0,
        }
    end,
})

vim.opt.path:append("**")

vim.cmd("let c_no_curly_error = 1")
vim.cmd("set background=dark")
vim.cmd("colorscheme custom4")

