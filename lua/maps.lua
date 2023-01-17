-------------------------------------------------
-- KEYBINDINGS
-------------------------------------------------

-- Set Function
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- Set KeyMap
map("n","<C-s>","<CMD>w<CR>")
