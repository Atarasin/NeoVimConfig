local config = {}

-- 快捷键设置
config.keyAttach = function(bufnr)
    local function buf_set_keymap(mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr })
    end

    -- 绑定快捷键
    require("core.keymaps").mapLSP(buf_set_keymap)
end

-- 禁用格式化功能, 交给专门插件处理
config.disableFormat = function(client)
    if vim.fn.has("nvim-0.8") == 1 then
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    else
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end
end

config.flags = {
    debounce_text_changes = 150,
}

config.capabilities = require("cmp_nvim_lsp").default_capabilities()

return config
