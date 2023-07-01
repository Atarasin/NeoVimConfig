# NeoVimConfig

本项目是基于[https://github.com/nshen/learn-neovim-lua/tree/v2](https://github.com/nshen/learn-neovim-lua/tree/v2)构建的
自用nvim配置。

文件组织结构说明如下：

```
├── init.lua                        # 配置入口
├── lua                             # lua配置脚本
│   ├── basic.lua                       # 基本格式
│   ├── colorscheme.lua                 # 颜色主题
│   ├── keymaps.lua                     # 按键映射
│   ├── lsp                         # lsp相关配置
│   │   ├── cmp.lua                     # 自动补全配置
│   │   ├── common-config.lua           # lsp通用配置       
│   │   ├── config                      # 具体lsp的配置
│   │   │   ├── clangd.lua
│   │   │   ├── lua.lua
│   │   │   └── pyright.lua
│   │   └── setup.lua               # lsp配置入口
│   ├── plugin-config               # 插件相关配置
│   │   ├── bufferline.lua
│   │   ├── dashboard.lua
│   │   ├── lualine.lua
│   │   ├── nvim-tree.lua
│   │   ├── nvim-treesitter.lua
│   │   ├── project.lua
│   │   └── telescope.lua
│   └── plugins.lua                 # Packer安装插件入口
├── plugin
│   └── packer_compiled.lua
├── README.md
```
