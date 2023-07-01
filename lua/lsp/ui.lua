vim.diagnostic.config({
    -- 右侧显示的文字
    virtual_text = true,
    -- 左侧的图标
    signs = true,
    -- 默认情况下只在normal模式下才会显示提示
    -- 在输入模式下也更新提示, 可能会影响性能
    update_in_insert = true,
})

local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl,
        { text = icon, texthl = hl, numhl = hl }
    )
end
