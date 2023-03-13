-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
  },
  -- auto install above language parsers
  auto_install = true,
})

-- -- import nvim-tree plugin safely
-- local setup, nvimtree = pcall(require, "nvim-tree")
-- if not setup then
--   return
-- end

-- -- recommended settings from nvim-tree documentation
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- -- change color for arrows in tree to light blue
-- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- -- configure nvim-tree
-- nvimtree.setup({
--   -- change folder arrow icons
--   renderer = {
--     icons = {
--       glyphs = {
--         folder = {
--           arrow_closed = "", -- arrow when folder is closed
--           arrow_open = "", -- arrow when folder is open
--         },
--       },
--     },
--   },
--   -- disable window_picker for
--   -- explorer to work well with
--   -- window splits
--   actions = {
--     open_file = {
--       window_picker = {
--         enable = false,
--       },
--     },
--   },
--   -- 	git = {
--   -- 		ignore = false,
--   -- 	},
-- })

-- -- open nvim-tree on setup

-- local function open_nvim_tree(data)
--   -- buffer is a [No Name]
--   local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

--   -- buffer is a directory
--   local directory = vim.fn.isdirectory(data.file) == 1

--   if not no_name and not directory then
--     return
--   end

--   -- change to the directory
--   if directory then
--     vim.cmd.cd(data.file)
--   end

--   -- open the tree
--   require("nvim-tree.api").tree.open()
-- end

-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

