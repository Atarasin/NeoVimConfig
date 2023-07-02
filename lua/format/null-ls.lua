local status, null_ls = pcall(require, "null-ls")
if not status then
    vim.notify("Cannot find null-ls!")
end

local helper = require("null-ls.helpers")
local formatting = null_ls.builtins.formatting

null_ls.setup({
    debug = false,
    sources = {
        -- 1.format source
        -- formatting.stylua,                   -- lua
        formatting.clang_format.with({          -- c/cpp/java/proto
            filetypes = {
                "c", "cpp", "java", "proto"
            },
            extra_args = {
                "--style", "{BasedOnStyle: Google, IndentWidth: 4, AccessModifierOffset: -4}"
            },
        }),
        formatting.autopep8,                    -- python
        -- 2.diagnostics
        -- 3.completion
        -- 4.code actions
        -- 5.hover
    },
    -- 保存自动格式化
    on_attach = function ()
        vim.cmd([[
            command! Format execute 'lua vim.lsp.buf.formatting()'
        ]])
    end
})
