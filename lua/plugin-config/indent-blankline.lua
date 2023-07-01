local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
    vim.notify("Cannot find indent_blankline")
    return
end

indent_blankline.setup({
    -- 空行占位
    space_char_blankline = " ",
    -- 用 treesitter 判断上下文
    show_current_context = true,
    show_current_context_start = true,
    context_patterns = {
        "class",
        "function",
        "method",
        "element",
        "^if",
        "^while",
        "^for",
        "^object",
        "^table",
        "block",
        "arguments",
    },
    -- :echo &filetype
    filetype = {
        "lua",
        "python",
        "cpp",
    },
    -- 竖线样式
    -- char = '¦'
    -- char = '┆'
    char = '│'
    -- char = "⎸",
    -- char = "▏",
})
