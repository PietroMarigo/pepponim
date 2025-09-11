-- ~/.config/nvim/lua/plugins/neotree.lua

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        window = {
          mappings = {
            ["O"] = "open",
          },
        },
      },
    })

    -- ────────────────────────────────────────────────────────────────────────────
    -- Minimal highlight overrides for NeoTree to be pure white bg + dark text
    -- ────────────────────────────────────────────────────────────────────────────
    local function hl(group, opts)
      vim.api.nvim_set_hl(0, group, opts)
    end

    -- Main NeoTree background/panel: white bg, black fg
    hl("NeoTreeNormal",    { bg = "#FFFFFF", fg = "#000000" })
    hl("NeoTreeNormalNC",  { bg = "#FFFFFF", fg = "#888888" }) -- unfocused panel

    -- Root folder name (bold black)
    hl("NeoTreeRootName",        { bg = "#FFFFFF", fg = "#000000", bold = true })

    -- Directory names in blue on white
    hl("NeoTreeDirectoryName",   { bg = "#FFFFFF", fg = "#0000FF", bold = true })

    -- File names in pure black on white
    hl("NeoTreeFileName",        { bg = "#FFFFFF", fg = "#000000" })

    -- Indent markers (vertical lines) in light grey on white
    hl("NeoTreeIndentMarker",    { bg = "#FFFFFF", fg = "#DDDDDD" })

    -- Git status icons: added (green), modified (orange), deleted (red)
    hl("NeoTreeGitAdded",        { bg = "#FFFFFF", fg = "#008000" })
    hl("NeoTreeGitModified",     { bg = "#FFFFFF", fg = "#FF5500" })
    hl("NeoTreeGitDeleted",      { bg = "#FFFFFF", fg = "#FF0000" })

    -- Highlight the selected line (light grey background, black text)
    hl("NeoTreeSelection",       { bg = "#EEEEEE", fg = "#000000" })

    -- If using floating NeoTree windows, make their borders and background white
    hl("NeoTreeFloatBorder",     { bg = "#FFFFFF", fg = "#DDDDDD" })
    hl("NeoTreeFloatNormal",     { bg = "#FFFFFF", fg = "#000000" })
  end,
}

