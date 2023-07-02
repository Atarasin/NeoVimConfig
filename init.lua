-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keymaps")
-- 主题设置
require("colorscheme")
-- 插件设置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
require("plugin-config.indent-blankline")
-- 内置lsp
require("lsp.setup")
-- 自动补全
require("autocmp.setup")
-- 提示UI
require("lsp.ui")
-- 代码格式化
require("format.setup")
