local M = {}
	local status, lualine = pcall(require, "lualine")
	if not status then
		return
	end
function M.config()
	local hop = require('hop')
	local directions = require('hop.hint').HintDirection
	vim.keymap.set('', '<leader><leader>f', function()
	  hop.hint_char1({ direction = directions.AFTER_CURSOR})
	end, {remap=true})
	vim.keymap.set('', '<leader><leader>F', function()
	  hop.hint_char1({ direction = directions.BEFORE_CURSOR})
	end, {remap=true})
	vim.keymap.set('', '<leader><leader>t', function()
	  hop.hint_char1({ direction = directions.AFTER_CURSOR, hint_offset = -1 })
	end, {remap=true})
	vim.keymap.set('', '<leader><leader>T', function()
	  hop.hint_char1({ direction = directions.BEFORE_CURSOR, hint_offset = 1 })
	end, {remap=true})
end

return M