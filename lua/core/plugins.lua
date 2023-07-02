local packer = require("packer")
packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        use("wbthomason/packer.nvim")
        -- 自定义插件列表
        -- theme
        use("folke/tokyonight.nvim")
        -- 侧边栏文件浏览器
        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" } )
        -- 顶部标签栏
        use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } } )
        -- 底部信息显示栏
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        -- 模糊搜索
        use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } }
        -- 启动页
        use({ "glepnir/dashboard-nvim", requires = { "nvim-tree/nvim-web-devicons" } })
        -- project
        use("ahmedkhalf/project.nvim")
        -- 语法高亮
        use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
        -- ---------------- LSP -----------------
        use("williamboman/mason.nvim")
        use("williamboman/mason-lspconfig.nvim")
        -- lsp config
        use("neovim/nvim-lspconfig")
        -- -------------代码补全引擎-------------
        use("hrsh7th/nvim-cmp")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp")     -- 提供Nvim内置LSP的补全
        use("hrsh7th/cmp-buffer")       -- 提供buffer的补全
        use("hrsh7th/cmp-path")         -- 提供路径的补全
        use("hrsh7th/cmp-cmdline")      -- 提供命令行的补全
        -- --------------snippet引擎-------------
        use("hrsh7th/vim-vsnip")
        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        -- ui
        use("lukas-reineke/indent-blankline.nvim")
        -- 代码格式化
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    end,
    config = {
        -- 并发数限制
        max_jobs = 16,
        -- 自定义源
        git = {
        -- default_url_format = "https://hub.fastgit.xyz/%s",
        -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
        -- default_url_format = "https://gitcode.net/mirrors/%s",
        -- default_url_format = "https://gitclone.com/github.com/%s",
        },
    },
})

pcall(
    vim.cmd,
    [[
        augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
        augroup end
    ]]
)
