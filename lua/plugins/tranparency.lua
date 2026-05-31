return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false, -- Important: do not lazy-load
    config = function()
      require("transparent").setup({
        groups = { -- Default groups to clear
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = { "NeoTreeNormal", "NeoTreeNormalNC" }, -- Add specific plugin groups
        exclude_groups = {}, -- Groups to keep opaque
      })
    end,
  },
}
