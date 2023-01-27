-------------------------------------------------
-- KEYBINDINGS
-------------------------------------------------

-- Set Function
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Set KeyMap
map("n","<C-s>","<CMD>w<CR>")
map("n","<C-n>","<CMD>NvimTreeToggle<CR>")
map("n","<C-S-n>","<CMD>NvimTreeFindFileToggle<CR>")
