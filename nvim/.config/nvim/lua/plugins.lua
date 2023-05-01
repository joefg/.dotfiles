--             __               _             
--     ____   / /__  __ ____ _ (_)____   _____
--    / __ \ / // / / // __ `// // __ \ / ___/
--   / /_/ // // /_/ // /_/ // // / / /(__  ) 
--  / .___//_/ \__,_/ \__, //_//_/ /_//____/  
-- /_/               /____/                   
--
-- Packer configuration.
-- Packer is a package manager for neovim.
-- https://github.com/wbthomason/packer.nvim

local packer_install_dir = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_repo = string.format('https://github.com/wbthomason/packer.nvim')
local install_cmd = string.format('!git clone --depth=1 %s %s', packer_repo, packer_install_dir)

if vim.fn.empty(vim.fn.glob(packer_install_dir)) > 0 then
	vim.api.nvim_echo({{'Installing packer.nvim', 'Type'}}, true, {})
	vim.api.nvim_command(install_cmd)
	vim.api.nvim_command('packadd packer.nvim')
end

vim.cmd 'packadd packer.nvim'

require('packer').startup(
	{
		function(use)
			-- Packer can manage itself.
			use { 'wbthomason/packer.nvim' };

			-- Colour scheme
			use { 'RRethy/nvim-base16'} ;

			-- statusline
			use {
				'hoob3rt/lualine.nvim',
				requires = {'kyazdani42/nvim-web-devicons', opt = true}
			};

			-- versioning
			use { 'TimUntersberger/neogit' };
			use { 'lewis6991/gitsigns.nvim' };

			-- Neovim-specific plugins
			use { 'nvim-lua/plenary.nvim' };
			use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' };

			-- LSP
			use { 'neovim/nvim-lspconfig' };

			-- polyglot (all the useful languages, loaded)
			use { 'sheerun/vim-polyglot' };
	end,
		config = {
			max_jobs = 16
		}
	}
)

