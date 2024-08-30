require("core.remap")
require("core.packer")
require("core.set")

local function is_ripgrep_installed()
  local handle = io.popen("rg --version")
  local result = handle:read("*a")
  handle:close()
  return result:match("ripgrep")
end

-- Notify if ripgrep is not installed
if not is_ripgrep_installed() then
  vim.notify("ripgrep is not installed. Please install it for full functionality.", vim.log.levels.WARN)
end
