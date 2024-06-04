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
	arrows = {"  ", "  "},
	bars = { " | "," | " },
	blank = {"   ", "   "}
}

M.sep = function(self, direction)
	local sep_style = self.separator or " "
	local sep_direction = 1
	if direction == "left"
		then sep_direction = 1
	elseif direction == "right"
		then sep_direction = 2
	end
	return self.separators[sep_style][sep_direction]
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

M.git_status = function(self)
	local git_info = vim.b.gitsigns_status_dict
	local git_symbol = self.git_symbol
	if not git_info or git_info.head == "" then
		return nil
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

M.fileinfo = function(self, direction)
	local separator = self:sep(direction)
	local filetype = vim.o.filetype
	if filetype == "" then
		filetype = nil
	end
	local info = {
		"%{&fileencoding?&fileencoding:&encoding}",
		"%{&fileformat}",
		filetype
	}
	return string.format(
		"%s",
		table.concat(clean_nils(info), separator)
	)
end

M.component = function(self, text, colour, direction)
	if text == nil then
		return nil
	end
	if direction == "left" then
		return string.format(
			"%s%s%s",
			colour,
			text,
			self:sep(direction)
	)
	elseif direction == "right" then
		return string.format(
			"%s%s%s",
			colour,
			self:sep(direction),
			text
		)
	end
end

M.statusline_active = function(self)
	local left = {
		self:component(self:mode(), self.colours.default, "left"),
		self:component(self:git_status(), self.colours.default, "left"),
		self:component(self:file(), self.colours.default, "left")
	}
	local right = {
		self:component(self:fileinfo("right"), self.colours.default, "right"),
		self:component(self:lineinfo(), self.colours.default, "right")
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
		self:component(self:file(), self.colours.normal, "left")
	}
	return " " .. table.concat(bar)
end

M.setup = function(self, config)
	self.separator = config.separator or "blank"
	self.git_symbol = config.git_symbol or "g:"
	Statusline = {}
	Statusline.active = function()
		return self:statusline_active()
	end
	Statusline.inactive = function()
		return self:statusline_inactive()
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
