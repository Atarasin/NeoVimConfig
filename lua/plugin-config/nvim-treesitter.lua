local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("Cannot find nvim-treesitter!")
    return
end

treesitter.setup({
    -- 安装language parser
    -- 可通过:TSInstallInfo查看支持的语言
    ensure_installed = {
        "json",
        "cpp",
        "c",
        "python",
        "lua",
        "vim"
    },
    -- 启用代码高亮
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- 启用代码缩进
    indent = {
        enable = true,
    },
})
