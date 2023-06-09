-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

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
map("n", "<C-n>", "<cmd>RunCode<cr>", { desc = "Run Code" })
map("n", "<leader>to", "<cmd> :Telescope oldfiles <cr>", { desc = "oldfiles" })
map(
  "n",
  "<F1>",
  "<cmd>lua vim.diagnostic.open_float(nil, {focus=false})<cr>",
  { noremap = true, silent = true, desc = "Show diagnostic" }
)
-- Move to window using the <ctrl> hjkl keys
map("n", "<C-Left>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- buffers
if Util.has("bufferline.nvim") then
  map("n", "<C-S-Left>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "<C-S-Right>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
else
  map("n", "<C-S-Left>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "<C-S Right>", "<cmd>bnext<cr>", { desc = "Next buffer" })
  map("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
  map("n", "]b", "<cmd>bnext<cr>", { desc = "Next buffer" })
end

-- map("n", "<F12>", "<cmd>FloatermToggle<cr>", { desc = "Toggle FloaTerm" })
-- map("n", "<F9>", "<cmd>FloatermNext<cr>", { desc = "Next FloaTerm" })
-- map("n", "<F8>", "<cmd>FloatermPrev<cr>", { desc = "Prev FloaTerm" })
-- map("n", "<F7>", "<cmd>FloatermNew<cr>", { desc = "New FloaTerm" })
