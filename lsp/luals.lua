return {
    cmd = { "lua-language-server" },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" }, -- LuaJIT for neovim
            diagnostics = {
                globals = { "vim" }
            },
            telemetry = { enable = false },
        },
    },
}
