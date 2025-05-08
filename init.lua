-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.number = true
vim.wo.relativenumber = true

require("config.lazy")

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.cmd("colorscheme catppuccin")

-- empty setup using defaults
require("nvim-tree").setup()

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {},
  extensions = {}
}

-- configs
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

-- keymaps
vim.keymap.set("n", "<leader>lz", ":Lazy<CR>", { desc = "Open Lazy UI" })
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "Open NVim Tree" })
vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>", { desc = 'Telescope live grep' })
