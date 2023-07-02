-- 基础配置
require("core.basic")
-- Packer插件管理
require("core.plugins")
-- 快捷键映射
require("core.keymaps")
-- 主题设置
require("core.colorscheme")
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
-- 提示UI
require("lsp.ui")
-- 自动补全
require("autocmp.setup")
-- 代码格式化
require("format.setup")
