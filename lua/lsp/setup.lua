-- local lsp_installer = require("nvim-lsp-installer")

-- :h mason-default-settings
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

local lspconfig = require("lspconfig")

-- mason-lspconfig uses the `lspconfig` server names in the APIs it exposes - not `mason.nvim` package names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
require("mason-lspconfig").setup({
    -- 确保安装，根据需要填写
    ensure_installed = {
        -- "sumneko_lua",
        "lua_ls",
        "pyright",
        "clangd",
    },
})

-- 安装列表
-- { key: 语言, value: 配置文件}
-- key必须为下列网址列出的名称
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
    lua_ls = require("lsp.config.lua"),         -- lua/lsp/config/lua.lua
    clangd = require("lsp.config.clangd"),         -- lua/lsp/config/clangd.lua
    pyright = require("lsp.config.pyright"),     -- lua/lsp/config/pyright.lua
}

for name, config in pairs(servers) do
    if config ~= nil and type(config) == "table" then
        -- 自定义初始化配置文件必须实现on_setup 方法
        config.on_setup(lspconfig[name])
    else
        -- 使用默认参数
        lspconfig[name].setup({})
    end
end
