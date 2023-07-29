local present, mason = pcall(require, "mason")

if not present then
    return
end

local options = {
    ensure_installed = {
        "delve",
    }, -- not an option from mason.nvim
    max_concurrent_installers = 10,
}

mason.setup(options)

vim.api.nvim_create_user_command("MasonInstallAll", function()
    vim.cmd("MasonInstall " .. table.concat(options.ensure_installed, " "))
end, {})
