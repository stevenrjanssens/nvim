--[[
    Prerequisites:
    - ruff
    - python-lsp-server and python-lsp-ruff need to be installed in the same env
    ]]--
return {
    cmd = { "pylsp" },
    root_markers = { "pyproject.toml", "requirements.txt", "setup.py", ".git"},
    filetypes = { "python" },
    settings = {
        pylsp = {
            plugins = {
                ruff = {
                    enabled = true,
                    formatEnabled = true,
                    executable = "ruff",
                    extendSelect = { "I" },  -- enable import sorting
                    perFileIgnores = { ["__init__.py"] = "CPY001" }
                }
            }
        }
    }
}
