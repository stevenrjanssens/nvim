return {
    cmd = { "lua-language-server" },
    root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT", -- LuaJIT for neovim
                path = { "lua/?.lua", "lua/?/init.lua" }
            },
            diagnostics = {
                globals = { "vim" }
            },
            telemetry = { enable = false },
            workspace = {
                checkThirdParty = false,
                library = os.getenv("VIMRUNTIME")
            }
        },
    },
}
