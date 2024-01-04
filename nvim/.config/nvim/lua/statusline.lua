--          __        __             ___          
--    _____/ /_____ _/ /___  _______/ (_)___  ___ 
--   / ___/ __/ __ `/ __/ / / / ___/ / / __ \/ _ \
--  (__  ) /_/ /_/ / /_/ /_/ (__  ) / / / / /  __/
-- /____/\__/\__,_/\__/\__,_/____/_/_/_/ /_/\___/ 
-- 

-- Goal: 
-- mode | git branch | filename | modified | ------- | [ encoding | os ] | ftype | line:col

local M = {}

M.modes = { 
		['n']     = 'NORMAL',
		['no']    = 'O-PENDING',
		['nov']   = 'O-PENDING',
		['noV']   = 'O-PENDING',
		['no\22'] = 'O-PENDING',
		['niI']   = 'NORMAL',
		['niR']   = 'NORMAL',
		['niV']   = 'NORMAL',
		['nt']    = 'NORMAL',
		['ntT']   = 'NORMAL',
		['v']     = 'VISUAL',
		['vs']    = 'VISUAL',
		['V']     = 'V-LINE',
		['Vs']    = 'V-LINE',
		['\22']   = 'V-BLOCK',
		['\22s']  = 'V-BLOCK',
		['s']     = 'SELECT',
		['S']     = 'S-LINE',
		['\19']   = 'S-BLOCK',
		['i']     = 'INSERT',
		['ic']    = 'INSERT',
		['ix']    = 'INSERT',
		['R']     = 'REPLACE',
		['Rc']    = 'REPLACE',
		['Rx']    = 'REPLACE',
		['Rv']    = 'V-REPLACE',
		['Rvc']   = 'V-REPLACE',
		['Rvx']   = 'V-REPLACE',
		['c']     = 'COMMAND',
		['cv']    = 'EX',
		['ce']    = 'EX',
		['r']     = 'REPLACE',
		['rm']    = 'MORE',
		['r?']    = 'CONFIRM',
		['!']     = 'SHELL',
		['t']     = 'TERMINAL',
}

M.mode = function(self)
	local currentMode = vim.api.nvim_get_mode().mode
	if self.modes[currentMode] == nil then
			return string.format('%s ', currentMode)
	end
	return string.format('%s ', self.modes[currentMode])
end

M.git_branch = function(self)
	local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
	if string.len(branch) > 0 then
			return string.format('%s ', branch)
	else
			return ''
	end
end

M.statusline = function(self)
	local left = {
		"%#PmenuSel# ",
		self:git_branch(),
		"%#LineNr# ",
		"%f%m "
	}

	local right = {
		"[%{&fileencoding?&fileencoding:&encoding} | %{&fileformat}] ",
		"%y ",
		"%l:%c "
	}
	return string.format(
		"%s %s %s",
		table.concat(left, ''),
		"%=",
		table.concat(right, '')
	)
end

M.setup = function(self)
	vim.o.laststatus = 2
	vim.o.statusline = self:statusline()
	vim.opt.showmode = true
end

return M
