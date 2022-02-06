local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com.cnpmjs.org/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost nvim-packer.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end


-- Have packer use a popup window
packer.init {
    git = {
        default_url_format = "https://github.com.cnpmjs.org/%s"
    },
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", -- optional, for file icon
        },
    }
    use "EdenEast/nightfox.nvim"
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use { "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" }
    use "neovim/nvim-lspconfig"

    -- nvim-cmp
    use "hrsh7th/cmp-nvim-lsp" -- { name = nvim_lsp }
    use "hrsh7th/cmp-buffer"   -- { name = buffer },
    use "hrsh7th/cmp-path"     -- { name = path }
    use "hrsh7th/cmp-cmdline"  -- { name = cmdline }
    use "hrsh7th/nvim-cmp"
    -- vsnip
    -- use "hrsh7th/cmp-vsnip"    -- { name = vsnip }
    -- use "hrsh7th/vim-vsnip"

    -- luasnip
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"

    use "rafamadriz/friendly-snippets"
    -- lspkind
    use "onsails/lspkind-nvim"
    use { "tami5/lspsaga.nvim", branch = "nvim6.0" }
    use "folke/which-key.nvim"
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "numToStr/Comment.nvim"
    use { "phaazon/hop.nvim", branch = "v1" }
    use {
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    -- use "numToStr/FTerm.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "windwp/nvim-autopairs"
    use "simrat39/symbols-outline.nvim"
end)
