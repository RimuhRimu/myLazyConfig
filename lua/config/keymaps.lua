-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- quit
map("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>qq", "<cmd>q<cr>", { desc = "Quit" })

-- escape insert mode
map("i", "jk", "<del><del><Esc>")

-- Move to window using the <ctrl> hjkl keys
map("n", "<A-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<A-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<A-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<A-l>", "<C-w>l", { desc = "Go to right window" })

-- Move Lines
map("n", "<C-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<C-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<C-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<C-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<C-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<C-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- save file
map({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- windows
map("n", "<leader>ww", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>wa", "<cmd>wa<cr>", { desc = "Save all buffers" })
map("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save and quit" })

-- miscelaneous
map("n", "<leader>mm", "<cmd>mess<cr>", { desc = "Show messages" })
map("n", "<leader>mn", "<cmd>mess<cr>", { desc = "Show notifications" })
map("v", "<leader><leader>m", "<cmd>Man<cr>", { desc = "Manual of this" })
map("n", "<leader><leader>x", "<cmd>w<cr><cmd>source %<cr>", { desc = "Save and source file" })

-- JSdoc

map("n", "<leader><leader>l", "<cmd>JsDocFormat<cr>", { desc = "Format js" })

-- Neotree
map("n", "<leader>nt", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })
map("n", "<leader>nb", "<cmd>Neotree buffers<cr>", { desc = "Toggle Explorer Buffers" })
map("n", "<leader>ng", "<cmd>Neotree git_status<cr>", { desc = "Toggle Explorer Git Status" })

-- Plenary

map("n", "<leader><leader>pp", "<Plug>PlenaryTestFile")

-- DAP

map("n", "<leader><leader>dc", "<cmd>DapContinue<CR>")
map("n", "<leader><leader>dsi", "<cmd>DapStepInto<CR>")
map("n", "<leader><leader>dso", "<cmd>DapStepOver<CR>")
map("n", "<leader><leader>dst", "<cmd>DapStepOut<CR>")
map("n", "<leader><leader>dt", "<cmd>DapToggleBreakpoint<CR>")

--Git
map("n", "<leader><leader>gc", "<cmd>Git commit<CR>", { desc = ":Git commit" })
map("n", "<leader><leader>gsh", "<cmd>Git push<CR>", { desc = ":Git push" })
map("n", "<leader><leader>gll", "<cmd>Git pull<CR>", { desc = ":Git pull" })
map("n", "<leader><leader>gss", "<cmd>Git status<CR>", { desc = ":Git status" })
map("n", "<leader><leader>gb", "<cmd>Git blame<CR>", { desc = ":Git blame" })
map("n", "<leader><leader>gd", "<cmd>Git diff<CR>", { desc = ":Git diff" })
map("n", "<leader><leader>grr", "<cmd>:Git restore<CR>", { desc = ":Git restore" })
map("n", "<leader><leader>grs", "<cmd>!git restore --staged %<CR>", { desc = "Git restore staged" })
map("n", "<leader><leader>g", "<cmd>Git<CR>", { desc = "Git" })
map("n", "<leader><leader>gad", "<cmd>Git add .<CR>", { desc = "Git add EVERYTHING" })
map("n", "<leader><leder>gfd", "<cmd>Git add %<CR>", { desc = "Git add this file" })
map("n", "<leader><leader>ggo", "<cmd>GBrowse<CR>", { desc = "Git browse" })
map("n", "<leader><leader>go", "<cmd>Git log<CR>", { desc = ":Git log" })
