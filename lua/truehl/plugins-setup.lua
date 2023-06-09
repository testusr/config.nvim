local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if  packer was just installed 

-- Autocommand that reloads neovim whenver you save this file 

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync 
  augroup end
]])


local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("bluz71/vim-nightfly-guicolors") -- preffered colorscheme   

  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use 

	-- tmux & split window navigation
  use("christoomey/vim-tmux-navigator") -- enaables splitscreen navigation between splits via CTRL+jklh

  use("szw/vim-maximizer")

  -- essential plugins
  use("tpope/vim-surround")
  use("vim-scripts/ReplaceWithRegister")

  -- commenting with gc
  use("numToStr/Comment.nvim") -- commeting one or several lines with gcc or gc<num>j

  -- file explorer 
  use("nvim-tree/nvim-tree.lua") 

  -- icons
  use("kyazdani42/nvim-web-devicons")

  -- statusline 
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding 
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- deep  
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

  -- autocomopletion 
  use("hrsh7th/nvim-cmp") -- do make actual autocomplete suggestions 
  use("hrsh7th/cmp-buffer") -- src which will allow cmp to suggest words
  use("hrsh7th/cmp-path") -- src which will allow cmp to make path suggestions
  
  -- snippets / collections of usefull snippets for a lot of languages 
  use("l3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  -- managing & installing lsp servers 
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim") -- bridge the gap between mason and lsp config

  -- configuring lsp servers 
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({ "glepnir/lspsaga.nvim", branch = "main" })
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")
  --
  --
	if packer_bootstrap then 
		require("packer").sync()
	end
end)

