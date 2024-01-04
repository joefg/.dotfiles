--          __        __             ___          
--    _____/ /_____ _/ /___  _______/ (_)___  ___ 
--   / ___/ __/ __ `/ __/ / / / ___/ / / __ \/ _ \
--  (__  ) /_/ /_/ / /_/ /_/ (__  ) / / / / /  __/
-- /____/\__/\__,_/\__/\__,_/____/_/_/_/ /_/\___/ 
-- 

local function clean_nils(table)
	local ret = {}
	for _, v in pairs(table) do
		ret[#ret+1] = v
	end
	return ret
end

local M = {}

M.modes = { 
	["n"]     = "NORMAL",
	["no"]    = "O-PENDING",
	["nov"]   = "O-PENDING",
	["noV"]   = "O-PENDING",
	["no\22"] = "O-PENDING",
	["niI"]   = "NORMAL",
	["niR"]   = "NORMAL",
	["niV"]   = "NORMAL",
	["nt"]    = "NORMAL",
	["ntT"]   = "NORMAL",
	["v"]     = "VISUAL",
	["vs"]    = "VISUAL",
	["V"]     = "V-LINE",
	["Vs"]    = "V-LINE",
	["\22"]   = "V-BLOCK",
	["\22s"]  = "V-BLOCK",
	["s"]     = "SELECT",
	["S"]     = "S-LINE",
	["\19"]   = "S-BLOCK",
	["i"]     = "INSERT",
	["ic"]    = "INSERT",
	["ix"]    = "INSERT",
	["R"]     = "REPLACE",
	["Rc"]    = "REPLACE",
	["Rx"]    = "REPLACE",
	["Rv"]    = "V-REPLACE",
	["Rvc"]   = "V-REPLACE",
	["Rvx"]   = "V-REPLACE",
	["c"]     = "COMMAND",
	["cv"]    = "EX",
	["ce"]    = "EX",
	["r"]     = "REPLACE",
	["rm"]    = "MORE",
	["r?"]    = "CONFIRM",
	["!"]     = "SHELL",
	["t"]     = "TERMINAL"
}

M.colours = {
	default       = "",
	active        = "%#StatusLine#",
	inactive      = "%#StatuslineNC#",
	mode          = "%#Mode#",
	mode_alt      = "%#ModeAlt#",
	git           = "%#Git#",
	git_alt       = "%#GitAlt#",
	filetype      = "%#Filetype#",
	filetype_al   = "%#FiletypeAlt#",
	line_col      = "%#LineCol#",
	line_col_alt  = "%#LineColAlt#",
	normal        = "%#Normal#"
}

M.separators = {
	arrow = {"  ", "  "}, -- If you can't see these arrows, use "blank"
	blank = {"   ", "   "}  -- instead.
}

M.sep = function(self, style, direction)
	if style == nil or style == "blank" then
		return " "
	end
	local sep_style = style
	local sep_direction = 1
	if direction == "left"
		then sep_direction = 1
	elseif direction == "right"
		then sep_direction = 2
	end
	return M.separators[sep_style][sep_direction]
end

M.mode = function(self)
	local current_mode = vim.api.nvim_get_mode().mode
	if self.modes[current_mode] == nil then
			return string.format( "%s" , current_mode)
	end
	return string.format(
		"%s",
		self.modes[current_mode]
	)
end

M.git_status = function(self, symbol)
	local git_info = vim.b.gitsigns_status_dict
	local git_symbol = ""
	if not git_info or git_info.head == "" then
		return nil
	end
	if symbol then
		git_symbol = " "
	end
	return table.concat({
		 git_symbol,
		 git_info.head
	})
end

M.lineinfo = function(self)
	if vim.bo.filetype == "alpha" then
		return nil
	end
	return "%l:%c" 
end

M.file = function(self)
	return "%t%m"
end

M.fileinfo = function(self, separator)
	local filetype = vim.o.filetype
	if filetype == "" then
		filetype = nil
	end
	local sep_symbol = " | "
	if separator ~= nil then
		sep_symbol = separator
	end
	local info = {
		"%{&fileencoding?&fileencoding:&encoding}",
		"%{&fileformat}",
		filetype
	}
	return string.format(
		"%s",
		table.concat(clean_nils(info), sep_symbol)
	)
end

M.component = function(self, text, colour, separator, direction)
	if text == nil then
		return nil
	end
	if direction == "left" then
		return string.format(
			"%s%s%s",
			colour,
			text,
			self:sep(separator, direction)
	)
	elseif direction == "right" then
		return string.format(
			"%s%s%s",
			colour,
			self:sep(separator, direction),
			text
		)
	end
end

M.statusline_active = function(self)
	local separator = "arrow"
	local use_git_symbol = true
	local left = {
		self:component(self:mode(), self.colours.default, separator, "left"),
		self:component(self:git_status(use_git_symbol), self.colours.default, separator, "left"),
		self:component(self:file(), self.colours.default, separator, "left")
	}
	local right = {
		self:component(self:fileinfo(self:sep(separator, "right")), self.colours.default, separator, "right"),
		self:component(self:lineinfo(), self.colours.default, separator, "right")
	}
	return string.format(
		"%s %s %s",
		" " .. table.concat(clean_nils(left)),
		"%=",
		table.concat(clean_nils(right)) .. " "
	)
end

M.statusline_inactive = function(self)
	local bar = {
		self:component(self:file(), self.colours.normal, "blank", "left")
	}
	return " " .. table.concat(bar)
end

M.setup = function(self)
	Statusline = {}
	Statusline.active = function()
		return M:statusline_active()
	end
	Statusline.inactive = function()
		return M:statusline_inactive()
	end
	vim.opt.showmode = false
	vim.opt.statusline = Statusline.active()
	vim.api.nvim_exec([[
		augroup Statusline
		au!
		au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
		au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
		augroup END
	]], false)
end

return M
