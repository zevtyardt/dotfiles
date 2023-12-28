local M = {}

M.term = {
  t = {
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
    ["<leader>v"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  },

  n = {
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "toggle horizontal term",
    },
    ["<leader>v"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle vertical term",
    },
  }
}

M.search_replace = {
  n = {
    ["<leader>ro"] = {":SearchReplaceSingleBufferOpen <CR>", "Replace single buffer open" },
    ["<leader>ra"] = {":SearchReplaceMultiBufferCFile <CR>", "Replace Multi Buffer CFile"}
  }
}

return M
