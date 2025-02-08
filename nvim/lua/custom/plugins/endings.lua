local M = {}

function M.append(char)
	local line_p, col = unpack(vim.api.nvim_win_get_cursor(0))
	local line = vim.api.nvim_get_current_line()
	local nline = line .. char
	vim.api.nvim_set_current_line(nline)
	vim.api.nvim_win_set_cursor(0, { line_p, col })
end

function M.delete_last()
	local line_p, col = unpack(vim.api.nvim_win_get_cursor(0))
	local line = vim.api.nvim_get_current_line()
	local nline = line:sub(0, string.len(line) - 1)
	vim.api.nvim_set_current_line(nline)
	vim.api.nvim_win_set_cursor(0, { line_p, col })
end

function remove_spaces_around_char(str, char)
	-- Use gsub to replace spaces around the character
	local result = str:gsub("%s*" .. char .. "%s*", char)
	return result
end

vim.keymap.set("n", ";;", function()
	M.append(";")
end)
vim.keymap.set("n", "::", function()
	M.append(":")
end)
vim.keymap.set("n", "))", function()
	M.append(")")
end)
vim.keymap.set("n", "}}", function()
	M.append("}")
end)
vim.keymap.set("n", "<leader>dl", function()
	M.delete_last()
end)
