--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["jj"] = "<Esc>"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.colorscheme = "tokyonight"
-- lvim.transparent_window = true

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
-- lvim.colorscheme = "lunar"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = "<Leader>t"
lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true
lvim.builtin.bufferline.mode = 'tabs'

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- always installed on startup, useful for parsers without a strict filetype
-- lvim.builtin.treesitter.ensure_installed = { "comment", "markdown_inline", "regex" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- linters, formatters and code actions <https://www.lunarvim.org/docs/languages#lintingformatting>
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "stylua" },
--   {
--     command = "prettier",
--     extra_args = { "--print-width", "100" },
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     command = "shellcheck",
--     args = { "--severity", "warning" },
--   },
-- }
-- local code_actions = require "lvim.lsp.null-ls.code_actions"
-- code_actions.setup {
--   {
--     exe = "eslint",
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
  --------------------- colorschemes -------------------
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },
  { "sainnhe/gruvbox-material" },
  { "dracula/vim" },
  { "luisiacc/gruvbox-baby" },
  { 'rafamadriz/neon' },                             -- Customizable colorscheme with excellent italic and bold support, dark and light variants. Made to work and look good with TreeSitter.
  { 'tomasiser/vim-code-dark' },                     -- A dark color scheme heavily inspired by the look of the Dark+ scheme of Visual Studio Code.
  { 'marko-cerovac/material.nvim' },                 -- Material.nvim is a highly configurable colorscheme written in lua and based on the material palette.
  { 'bluz71/vim-nightfly-guicolors' },               -- Nightfly is a dark GUI color scheme heavily inspired by Sarah Drasner's Night Owl theme.
  { 'bluz71/vim-moonfly-colors' },                   -- Moonfly is a dark color scheme with Treesitter support.
  { 'ChristianChiarulli/nvcode-color-schemes.vim' }, -- Nvcode, onedark, nord colorschemes with Treesitter support.
  { 'folke/tokyonight.nvim' },                       -- A clean, dark Neovim theme written in Lua, with support for LSP, TreeSitter and lots of plugins.
  { 'sainnhe/sonokai' },                             --High Contrast & Vivid Color Scheme based on Monokai Pro.
  { 'kyazdani42/blue-moon' },                        -- A dark color scheme for Neovim derived from palenight and carbonight.
  { 'NTBBloodbath/doom-one.nvim' },                  -- Lua port of doom-emacs' doom-one for Neovim.
  { 'dracula/vim' },                                 --Famous beautiful dark powered theme."rebelot/kanagawa.nvim" },
  { 'catppuccin/nvim' },
  -------------------------------------------------------
  { 'blueyed/vim-diminactive' },
  { "github/copilot.vim" },
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require('distant'):setup()
    end
  },
  { 'nvim-lua/plenary.nvim' },
  {
    'nosduco/remote-sshfs.nvim',
    require('remote-sshfs').setup({})
  },
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require('distant'):setup()
    end
  },
  -- jetpack codebase navigation
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  -- blazing fast minimap/scrollbar written in Rust
  {
    'wfxr/minimap.vim',
    build = "cargo install --locked code-minimap",
    -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
    config = function()
      vim.cmd("let g:minimap_width = 10")
      vim.cmd("let g:minimap_auto_start = 1")
      vim.cmd("let g:minimap_auto_start_win_enter = 1")
      vim.cmd("let g:minimap_highlight_range=1")
    end,
  },
  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-j>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<C-h>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<C-c>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  }
}

-- Copilot settings
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("")', { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-H>", 'copilot#Previous()', { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-K>", 'copilot#Next()', { expr = true, silent = true })
