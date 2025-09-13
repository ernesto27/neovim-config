require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Load custom mappings
local custom_mappings = require "custom.mappings"

-- Apply custom mappings
for mode, mappings in pairs(custom_mappings) do
  for key, mapping in pairs(mappings) do
    local cmd = mapping[1]
    local desc = mapping[2]
    map(mode, key, cmd, { desc = desc })
  end
end

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
