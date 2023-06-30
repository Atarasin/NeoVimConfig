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
