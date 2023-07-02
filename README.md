# NeoVimConfig

本项目是基于[https://github.com/nshen/learn-neovim-lua/tree/v2](https://github.com/nshen/learn-neovim-lua/tree/v2)构建的
自用nvim配置。

## 1.项目组织结构

```
├── init.lua                        # nvim配置入口
├── lua
│   ├── autocmp                     # 自动补全
│   │   ├── cmp.lua
│   │   └── setup.lua
│   ├── core                        # nvim核心配置
│   │   ├── basic.lua
│   │   ├── colorscheme.lua
│   │   ├── keymaps.lua
│   │   └── plugins.lua
│   ├── format                      # 格式化
│   │   ├── null-ls.lua
│   │   └── setup.lua
│   ├── lsp                         # 语言服务器配置
│   │   ├── common-config.lua
│   │   ├── config
│   │   │   ├── clangd.lua
│   │   │   ├── lua.lua
│   │   │   └── pyright.lua
│   │   ├── setup.lua
│   │   └── ui.lua
│   └── plugin-config               # 插件配置
│       ├── bufferline.lua
│       ├── dashboard.lua
│       ├── indent-blankline.lua
│       ├── lualine.lua
│       ├── nvim-tree.lua
│       ├── nvim-treesitter.lua
│       ├── project.lua
│       └── telescope.lua
└── README.md
```

## 2.插件总览

```lua
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
```

## 3.插件涉及依赖

### 3.1.telescope

1. BurntSushi/ripgrep
2. sharkdp/fd

### 3.2.lsp

本文通过`mason`管理lsp，根据需要安装指定语言的LSP。可使用命令`:Mason`查看相关信息。

1. clangd   ->  c/c++
2. pyright  ->  python
3. lua_ls   ->  lua

### 3.3.格式化

本项目采用`null-ls`实现格式化，需要安装指定语言的格式化工具。可通过命令`:NullLsInfo`查看相关信息。

1. clang-format ->  c/c++/java/proto
2. autopep8     ->  python 
