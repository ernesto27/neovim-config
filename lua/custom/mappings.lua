-- ~/.config/nvim/lua/custom/mappings.lua

---@type MappingsTable
local M = {}

M.n = {
  -- Add your keymap here
  ["<leader>ca"] = { vim.lsp.buf.code_action, "LSP Code Action" },

  -- You can add other custom mappings here as well
  -- example: ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
}

M.v = {
  -- example: ["<leader>c"] = { "<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "Comment" },
}

return M