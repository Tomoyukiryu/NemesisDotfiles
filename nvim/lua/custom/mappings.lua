---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["ZZ"] = { "<cmd> qa <CR>", "Quit nvim" }, -- New keymap
    ["<C-z>"] = { ":undo <CR>", "Undo"}, -- New keymap
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  i = {
    ["<C-z>"] = { "<C-o>u", "Undo" }, -- New keymap
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
