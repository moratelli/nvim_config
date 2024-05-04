-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.cs" },
  { import = "astrocommunity.diagnostics.error-lens-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.workflow.hardtime-nvim" },
  { import = "astrocommunity.editing-support.wildfire-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.keybinding.nvcheatsheet-nvim" },
  { import = "astrocommunity.editing-support.nvim-regexplainer" },
  { import = "astrocommunity.git.fugit2-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  { import = "astrocommunity.lsp.garbage-day-nvim" },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.lsp.actions-preview-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.utility.mason-tool-installer-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.lsp.delimited-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  { import = "astrocommunity.split-and-window.windows-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.code-runner.overseer-nvim" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-jest", -- add dependency to neotest
    },
    opts = function(_, opts)
      if not opts.adapters then opts.adapters = {} end
      table.insert(opts.adapters, require "neotest-jest") -- insert neotest-jest to adapters list
    end,
  },
  {
    "coffebar/neovim-project",
    opts = {
      projects = { -- define project roots
        "~/dev/*",
        "~/.config/*",
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append "globals" -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
      { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
  },
}
