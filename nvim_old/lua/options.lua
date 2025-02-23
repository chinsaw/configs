local g = vim.g
local opt = vim.opt

g.mapleader = ","
--g:C_Ctrl_j = "off"


vim.g.rustfmt_autosave = 1
-- basic
opt.mouse = 'a'
opt.title = true
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.filetype = "on"
opt.undofile = true
opt.cmdheight = 1
opt.termguicolors = true
opt.showmode = false
opt.so = 20

-- timeout stuff
opt.updatetime = 300
opt.timeout = true
opt.timeoutlen = 500
opt.ttimeoutlen = 10

-- status, tab, number, sign line
opt.ruler = false
opt.laststatus = 2
opt.showtabline = 1
opt.number = true
opt.numberwidth = 1
opt.relativenumber = true
opt.signcolumn = "yes"

-- window, buffer, tabs
opt.splitbelow = true
opt.splitright = true
opt.hidden = true
opt.fillchars.vert = "│"

-- text formatting
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.showmatch = true
opt.smartcase = true
--opt.whichwrap:append "<>[]hl"

--folding
opt.foldmethod = 'indent'
opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- remove intro
opt.shortmess:append "sI"

--miscs
opt.completeopt = { 'menuone', 'noselect', 'noinsert' }

-- disable inbuilt vim plugins
local built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}

for _, plugin in pairs(built_ins) do
  g["loaded_" .. plugin] = 1
end
