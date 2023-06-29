local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("Cannot find nvim-tree!")
    return
end

-- 列表操作快捷键
local list_keys = require('keybindings').nvimTreeList
nvim_tree.setup({
    -- 不显示git状态图标
    git = {
        enable = false,
    },
    -- project plugin 需要这样设置
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cmd = true,
    },
    -- 隐藏 .文件 和 node_modules 文件夹
    filters = {
        enable = true,
    }
})
