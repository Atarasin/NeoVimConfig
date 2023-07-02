local common = require("lsp.common-config")
local opts = {
    capabilities = common.capabilities,
    flags = common.flags,
    on_attach = function(client, bufnr)
        common.disableFormat(client)
        common.keyAttach(bufnr)
    end,
    root_pattern = {
        ".clangd",                              -- clangd配置文件
        ".clang-tidy",
        ".clang-format",
        "compile_commands.json",
        "compile_flags.txt",
        "configure.ac",
        ".git",
    },
    cmd = {
        "clangd",
        "--query-driver", "/usr/bin/gcc",       -- 指定编译器
    },
}

return {
    on_setup = function(server)
        server.setup(opts)
    end,
}
